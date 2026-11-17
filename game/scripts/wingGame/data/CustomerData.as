package wingGame.data
{
   import §_-1d§.§_-BY§;
   import §_-C2§.§_-5i§;
   import wingGame.data.customers.*;
   
   public class CustomerData
   {
      private var gameObj:§_-BY§;
      
      private var customersIncluded:Array;
      
      private var customerDataFiles:Array;
      
      private var randomSeed:Number = 1020304;
      
      public function CustomerData(param1:§_-BY§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.customersIncluded = [CustomerJojo,CustomerBoomer,CustomerQuinn,CustomerXolo,CustomerJohnny,CustomerProfessorFitz,CustomerNinjoy,CustomerChuckOrMandi,CustomerClover,CustomerMindy,CustomerAllan,CustomerHank,CustomerTimm,CustomerGreg,CustomerUtah,CustomerTaylor,CustomerRobby,CustomerRita,CustomerJames,CustomerAlberto,CustomerClair,CustomerKahuna,CustomerScooter,CustomerHugo,CustomerMaggie,CustomerBigPauly,CustomerAkari,CustomerWally,CustomerKayla,CustomerSargeFan,CustomerMitch,CustomerWendy,CustomerTohru,CustomerGeorgito,CustomerZoe,CustomerCooper,CustomerLisa,CustomerFranco,CustomerXandra,CustomerCarloRomano,CustomerSkyler,CustomerRico,CustomerSue,CustomerGremmie,CustomerBrunaRomano,CustomerNick,CustomerPrudence,CustomerEdna,CustomerDoan,CustomerCaptainCori,CustomerKingsley,CustomerPenny,CustomerMarty,CustomerOlga,CustomerSasha,CustomerRoy,CustomerCecilia,CustomerConnor,CustomerYippy,CustomerTony,CustomerPeggy,CustomerGinoRomano,CustomerMary,CustomerLittleEdoardo,CustomerMatt,CustomerIvy
            ,CustomerVicky,CustomerCletus,CustomerFoodini,CustomerPapaLouie];
            if(_loc4_ || Boolean(this))
            {
               this.customerDataFiles = [];
               if(_loc3_)
               {
               }
               §§goto(addr110);
            }
         }
         super();
         addr110:
         var _loc2_:CustomerData = this;
         if(_loc4_ || Boolean(this))
         {
            _loc2_.gameObj = param1;
            if(!_loc3_)
            {
               _loc2_.setupCustomerData();
            }
         }
      }
      
      public function setupCustomerData() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Class = null;
         var _loc4_:CustomerDataFile = null;
         var _loc1_:CustomerData = this;
         if(!_loc5_)
         {
            _loc1_.customerDataFiles = [];
            if(!_loc5_)
            {
               _loc1_.customerDataFiles.push(new CustomerDataFile());
            }
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.customersIncluded.length)
         {
            _loc3_ = _loc1_.customersIncluded[_loc2_];
            _loc4_ = new _loc3_();
            if(_loc6_)
            {
               _loc1_.customerDataFiles.push(_loc4_);
               if(_loc5_)
               {
                  continue;
               }
            }
            _loc2_++;
         }
      }
      
      public function outputTallies() : void
      {
         var _loc1_:CustomerData = this;
      }
      
      public function getCustomerOrder(param1:Number) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:CustomerData = this;
         var _loc3_:CustomerDataFile = _loc2_.customerDataFiles[param1];
         var _loc4_:Array = [];
         if(_loc5_)
         {
            §§goto(addr56);
         }
         §§push(_loc2_.getFoodCriticOrder().getOrderAsArray());
         if(_loc5_)
         {
            _loc4_ = §§pop();
         }
         else
         {
            §§goto(addr56);
         }
         addr56:
         if(param1 != 1)
         {
            §§push(_loc2_.getAvailableOrder(param1).getOrderAsArray());
         }
         return §§pop();
      }
      
      public function getCustomerCompleteOrder(param1:Number) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:CustomerData = this;
         var _loc3_:CustomerDataFile = _loc2_.customerDataFiles[param1];
         var _loc4_:CustomerOrder = _loc3_.customerOrder;
         var _loc5_:Array = [];
         if(_loc7_)
         {
            §§goto(addr59);
         }
         §§push(_loc2_.getFoodCriticOrder().getOrderAsArray());
         if(!_loc6_)
         {
            _loc5_ = §§pop();
         }
         else
         {
            §§goto(addr59);
         }
         addr59:
         if(param1 != 1)
         {
            §§push(_loc4_.getOrderAsArray());
         }
         return §§pop();
      }
      
      public function getCustomerCompleteOrderData(param1:Number) : CustomerOrder
      {
         var _loc2_:CustomerData = this;
         var _loc3_:CustomerDataFile = _loc2_.customerDataFiles[param1];
         return _loc3_.customerOrder;
      }
      
      public function getFoodCriticOrder(param1:Number = -1) : CustomerOrder
      {
         var _loc38_:Boolean = true;
         var _loc39_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc35_:* = null;
         var _loc2_:CustomerData = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         if(_loc38_)
         {
            _loc2_.setRandomSeed(_loc3_.currentDay);
            if(_loc39_ && Boolean(_loc3_))
            {
            }
            addr52:
            var _loc5_:CustomerOrder = new CustomerOrder();
            var _loc6_:* = 7;
            var _loc7_:Array = [];
            var _loc8_:Array = [FoodData.MEAT_WING,FoodData.MEAT_BONELESS,FoodData.MEAT_SHRIMP,FoodData.MEAT_STRIPS];
            var _loc9_:Array = [];
            var _loc10_:Array = FoodData.getSauces();
            var _loc11_:Array = [];
            var _loc12_:Array = [FoodData.SIDE_CARROT,FoodData.SIDE_CELERY,FoodData.SIDE_CHEESECUBES,FoodData.SIDE_FRY,FoodData.SIDE_GREENPEPPER,FoodData.SIDE_REDPEPPER];
            var _loc13_:Array = [];
            var _loc14_:Array = [FoodData.DIP_AWESOMESAUCE,FoodData.DIP_BLUECHEESE,FoodData.DIP_KUNGPAO,FoodData.DIP_MANGOCHILI,FoodData.DIP_RANCH,FoodData.DIP_ZESTYPESTO];
            if(_loc38_ || Boolean(_loc3_))
            {
               _loc4_ = 0;
            }
            loop0:
            while(true)
            {
               if(_loc4_ < _loc8_.length)
               {
                  §§push(_loc3_.hasTopping(_loc8_[_loc4_]));
                  if(_loc38_ || Boolean(this))
                  {
                     if(§§pop())
                     {
                        _loc7_.push(_loc8_[_loc4_]);
                     }
                     §§push(_loc4_ + 1);
                     if(_loc38_ || Boolean(_loc3_))
                     {
                        continue;
                     }
                  }
                  break;
               }
               if(_loc38_)
               {
                  §§push(0);
                  if(_loc38_)
                  {
                     _loc4_ = §§pop();
                     while(true)
                     {
                        §§push(_loc4_);
                     }
                  }
                  addr210:
                  _loc4_ = §§pop();
                  loop190:
                  while(true)
                  {
                     §§push(_loc4_);
                     loop3:
                     while(true)
                     {
                        if(§§pop() < _loc12_.length)
                        {
                           §§push(_loc3_.hasTopping(_loc12_[_loc4_]));
                           if(_loc38_)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    _loc11_.push(_loc12_[_loc4_]);
                                    if(_loc38_ || Boolean(param1))
                                    {
                                    }
                                    addr292:
                                    while(true)
                                    {
                                       _loc13_.push(_loc14_[_loc4_]);
                                       addr297:
                                       while(true)
                                       {
                                          _loc4_++;
                                          if(_loc38_ || Boolean(param1))
                                          {
                                             §§goto(addr308);
                                          }
                                       }
                                    }
                                 }
                                 addr222:
                              }
                              while(true)
                              {
                                 §§push(_loc4_);
                                 if(!(_loc38_ || Boolean(param1)))
                                 {
                                    continue loop3;
                                 }
                                 §§push(§§pop() + 1);
                                 if(!(_loc38_ || Boolean(_loc2_)))
                                 {
                                    break;
                                 }
                                 §§push(§§pop());
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                    if(!_loc38_)
                                    {
                                       break;
                                    }
                                    continue loop190;
                                 }
                                 §§goto(addr292);
                              }
                           }
                           break;
                        }
                        addr308:
                        if(!(_loc39_ && Boolean(_loc2_)))
                        {
                           §§push(0);
                           if(!(_loc39_ && Boolean(_loc2_)))
                           {
                              addr273:
                              §§push(§§pop());
                              if(_loc39_ && Boolean(_loc3_))
                              {
                              }
                              while(true)
                              {
                                 if(§§pop() < _loc14_.length)
                                 {
                                    §§push(_loc3_.hasTopping(_loc14_[_loc4_]));
                                    break loop3;
                                 }
                              }
                              addr309:
                           }
                           addr313:
                           var _loc15_:* = §§pop();
                           var _loc16_:* = 0;
                           var _loc17_:Number = 0;
                           var _loc18_:Number = 5;
                           §§push(Math.floor(_loc3_.currentDay / 7) - 1);
                           if(!_loc39_)
                           {
                              §§push(§§pop() % _loc18_);
                              if(_loc38_)
                              {
                                 §§push(§§pop() + 1);
                                 if(_loc38_)
                                 {
                                    §§push(§§pop());
                                 }
                              }
                           }
                           var _loc19_:* = §§pop();
                           if(_loc38_)
                           {
                              §§push(param1);
                              §§push(-1);
                              if(!_loc39_)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    if(!_loc39_)
                                    {
                                       addr393:
                                       §§push(Math.floor(param1 / 7) - 1);
                                       if(_loc38_ || Boolean(param1))
                                       {
                                          §§push(§§pop() % _loc18_);
                                          §§push(1);
                                          if(!_loc39_)
                                          {
                                             addr390:
                                             §§push(§§pop() + §§pop());
                                             if(!_loc39_)
                                             {
                                                _loc19_ = §§pop();
                                                if(_loc38_)
                                                {
                                                }
                                                addr392:
                                                §§push(§§pop());
                                             }
                                             _loc19_ = §§pop();
                                          }
                                          addr391:
                                          §§goto(addr392);
                                          §§push(0);
                                       }
                                       var _loc20_:* = §§pop();
                                       var _loc21_:* = 0;
                                       var _loc22_:* = "";
                                       var _loc23_:* = 0;
                                       var _loc24_:* = "";
                                       var _loc25_:* = 0;
                                       var _loc26_:* = 0;
                                       var _loc27_:Boolean = false;
                                       var _loc28_:* = 0;
                                       var _loc29_:* = 0;
                                       var _loc30_:Number = 0;
                                       var _loc31_:* = 0;
                                       var _loc32_:Number = 0;
                                       var _loc33_:* = 0;
                                       var _loc34_:* = 0;
                                       §§push(§_-5i§);
                                       §§push("Day " + _loc3_.currentDay);
                                       if(!(_loc39_ && Boolean(_loc3_)))
                                       {
                                          §§push(§§pop() + ": Food Critic Pattern ");
                                          if(_loc38_)
                                          {
                                             §§push(§§pop() + _loc19_);
                                          }
                                       }
                                       §§pop().§_-CE§(§§pop());
                                       §§push(_loc19_);
                                       if(!(_loc39_ && Boolean(this)))
                                       {
                                          §§push(1);
                                          if(!(_loc39_ && Boolean(_loc2_)))
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc38_ || Boolean(_loc3_))
                                                {
                                                   _loc20_ = Math.ceil(this.randomize() * 2);
                                                   _loc26_ = this.randomize();
                                                   §§push(_loc20_);
                                                   §§push(1);
                                                   if(_loc38_ || Boolean(param1))
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(_loc26_ < 0.5)
                                                         {
                                                            §§push(6);
                                                            if(_loc38_ || Boolean(_loc3_))
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc39_)
                                                               {
                                                                  _loc25_ = §§pop();
                                                                  addr578:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc15_);
                                                                  }
                                                                  addr521:
                                                                  addr787:
                                                               }
                                                               loop152:
                                                               while(true)
                                                               {
                                                                  _loc16_ = §§pop();
                                                                  addr1091:
                                                                  loop136:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc16_);
                                                                     if(!(_loc39_ && Boolean(param1)))
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                        if(_loc38_ || Boolean(this))
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!(_loc39_ && Boolean(_loc3_)))
                                                                           {
                                                                              _loc16_ = §§pop();
                                                                              _loc6_--;
                                                                              loop153:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc16_ < _loc20_)
                                                                                 {
                                                                                    if(_loc11_.length != 0)
                                                                                    {
                                                                                       §§push(_loc6_);
                                                                                       if(_loc38_ || Boolean(this))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() >= 1)
                                                                                             {
                                                                                                §§push(Math.floor(this.randomize() * _loc11_.length));
                                                                                                if(!(_loc39_ && Boolean(_loc2_)))
                                                                                                {
                                                                                                   _loc21_ = §§pop();
                                                                                                   _loc22_ = _loc11_[_loc21_];
                                                                                                   _loc11_.splice(_loc21_,1);
                                                                                                   §§push(_loc25_ == 4);
                                                                                                   if(!(_loc39_ && Boolean(_loc2_)))
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc38_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(!_loc39_)
                                                                                                            {
                                                                                                               §§push(_loc16_ == 0);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc35_ = FoodData.DISTRO_LEFT;
                                                                                                               addr2030:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr2044:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc4_);
                                                                                                                     if(!(_loc39_ && Boolean(param1)))
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(3);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                              if(_loc38_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          §§push(_loc4_);
                                                                                                                                          addr2060:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() < _loc26_);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr2058:
                                                                                                                                    }
                                                                                                                                    addr2062:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(!(_loc39_ && Boolean(param1)))
                                                                                                                                       {
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             addr2071:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                §§push(_loc4_);
                                                                                                                                                §§push(_loc26_);
                                                                                                                                                §§push(_loc20_);
                                                                                                                                                if(!(_loc39_ && Boolean(this)))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!(_loc39_ && Boolean(this)))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() > §§pop());
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr2686);
                                                                                                                                                }
                                                                                                                                                §§goto(addr2432);
                                                                                                                                             }
                                                                                                                                             addr2071:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc11_.length > 0)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc39_ && Boolean(this)))
                                                                                                                                                   {
                                                                                                                                                      addr2103:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc21_ = Math.floor(this.randomize() * _loc11_.length);
                                                                                                                                                         §§push(_loc11_[_loc21_]);
                                                                                                                                                         if(!_loc39_)
                                                                                                                                                         {
                                                                                                                                                            _loc22_ = §§pop();
                                                                                                                                                            if(!_loc39_)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc11_.splice(_loc21_,1);
                                                                                                                                                                  if(_loc38_ || Boolean(_loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     _loc5_.addSide(_loc22_,3,_loc35_);
                                                                                                                                                                     addr2137:
                                                                                                                                                                     loop81:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                        if(!(_loc39_ && Boolean(_loc2_)))
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - 1);
                                                                                                                                                                              if(_loc38_ || Boolean(_loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc6_ = §§pop();
                                                                                                                                                                                    if(_loc39_)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr2407);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr2153:
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr2145:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr2170:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc21_ = §§pop();
                                                                                                                                                                              §§push(_loc7_[_loc21_]);
                                                                                                                                                                              if(!(_loc39_ && Boolean(this)))
                                                                                                                                                                              {
                                                                                                                                                                                 _loc22_ = §§pop();
                                                                                                                                                                                 if(!_loc39_)
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Math.floor(this.randomize() * _loc9_.length));
                                                                                                                                                                                       if(_loc38_)
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc23_ = §§pop();
                                                                                                                                                                                             if(!(_loc39_ && Boolean(_loc3_)))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc9_[_loc23_]);
                                                                                                                                                                                                if(_loc38_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc24_ = §§pop();
                                                                                                                                                                                                }
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2332);
                                                                                                                                                                                          addr2195:
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr2321:
                                                                                                                                                                                    _loc4_ = §§pop();
                                                                                                                                                                                    addr2322:
                                                                                                                                                                                    §§goto(addr2563);
                                                                                                                                                                                    addr2185:
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              break loop81;
                                                                                                                                                                           }
                                                                                                                                                                           addr2170:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr2616);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr2658);
                                                                                                                                                                     addr2137:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr2121:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr2550);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr2654);
                                                                                                                                                      }
                                                                                                                                                      addr2103:
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc9_.splice(_loc23_,1);
                                                                                                                                                      _loc5_.addWings(_loc22_,_loc24_,3,_loc35_);
                                                                                                                                                      if(_loc38_ || Boolean(_loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                         §§push(2);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(!(_loc39_ && Boolean(_loc2_)))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(!_loc39_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc6_ = §§pop();
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr2821);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr2615);
                                                                                                                                                         }
                                                                                                                                                         addr2229:
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr2772);
                                                                                                                                                   addr2210:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else if(_loc9_.length > 0)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr2170);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc4_++;
                                                                                                                                                if(!(_loc39_ && Boolean(param1)))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr2252);
                                                                                                                                                }
                                                                                                                                                §§goto(addr2709);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr2091:
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr2057:
                                                                                                                              }
                                                                                                                              §§goto(addr2418);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr2052:
                                                                                                                     }
                                                                                                                     §§goto(addr2790);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr2026:
                                                                                                         }
                                                                                                         §§push(§§pop());
                                                                                                         if(!(_loc39_ && Boolean(_loc2_)))
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc38_ || Boolean(_loc2_))
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     §§push(!_loc27_);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr2062);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc38_)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     §§push(this.randomize() < 0.5);
                                                                                                                     if(_loc38_ || Boolean(_loc2_))
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr1673:
                                                                                                                     addr1674:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(!_loc39_)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           if(_loc38_)
                                                                                                                           {
                                                                                                                              §§push(_loc30_);
                                                                                                                              if(_loc38_ || Boolean(_loc2_))
                                                                                                                              {
                                                                                                                                 §§push(1);
                                                                                                                                 if(!(_loc39_ && Boolean(_loc3_)))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() <= §§pop());
                                                                                                                                    if(_loc38_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    §§goto(addr2419);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              break loop153;
                                                                                                                           }
                                                                                                                           §§goto(addr2210);
                                                                                                                        }
                                                                                                                        addr1703:
                                                                                                                        §§push(§§pop());
                                                                                                                        if(_loc38_ || Boolean(_loc3_))
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              addr1712:
                                                                                                                              §§pop();
                                                                                                                              §§push(_loc33_);
                                                                                                                              §§push(6);
                                                                                                                              if(_loc38_ || Boolean(_loc2_))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                 if(_loc39_ && Boolean(param1))
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 addr1807:
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(!(_loc39_ && Boolean(this)))
                                                                                                                                    {
                                                                                                                                       §§push(2);
                                                                                                                                       if(!_loc39_)
                                                                                                                                       {
                                                                                                                                          addr1818:
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(_loc38_)
                                                                                                                                          {
                                                                                                                                             _loc20_ = §§pop();
                                                                                                                                             addr1835:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc32_);
                                                                                                                                                if(_loc38_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() >= _loc20_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc39_ && Boolean(_loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr2461);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr1956:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else if(_loc11_.length == 0)
                                                                                                                                                   {
                                                                                                                                                      addr1841:
                                                                                                                                                      §§goto(addr1956);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                      if(_loc38_ || Boolean(_loc2_))
                                                                                                                                                      {
                                                                                                                                                         §§push(1);
                                                                                                                                                         if(_loc38_)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr2229);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr2790);
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr2052);
                                                                                                                                             addr1944:
                                                                                                                                          }
                                                                                                                                          §§goto(addr2378);
                                                                                                                                       }
                                                                                                                                       §§goto(addr2662);
                                                                                                                                    }
                                                                                                                                    §§goto(addr2782);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(1);
                                                                                                                                    if(_loc38_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr2730);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop() < §§pop())
                                                                                                                                 {
                                                                                                                                    §§goto(addr1956);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(Math.floor(this.randomize() * _loc11_.length));
                                                                                                                                    if(!_loc39_)
                                                                                                                                    {
                                                                                                                                       loop87:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc21_ = §§pop();
                                                                                                                                          addr1868:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc11_[_loc21_]);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc22_ = §§pop();
                                                                                                                                                if(_loc38_)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc11_.splice(_loc21_,1);
                                                                                                                                                      if(_loc38_ || Boolean(_loc3_))
                                                                                                                                                      {
                                                                                                                                                         _loc5_.addSide(_loc22_,_loc25_,FoodData.DISTRO_RIGHT);
                                                                                                                                                         if(!(_loc39_ && Boolean(_loc3_)))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc34_);
                                                                                                                                                            if(_loc38_)
                                                                                                                                                            {
                                                                                                                                                               addr1902:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + _loc25_);
                                                                                                                                                                  if(!(_loc39_ && Boolean(this)))
                                                                                                                                                                  {
                                                                                                                                                                     _loc34_ = §§pop();
                                                                                                                                                                     loop117:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc32_);
                                                                                                                                                                        if(_loc38_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc32_ = §§pop() + 1;
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                              if(!(_loc39_ && Boolean(_loc3_)))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - 1);
                                                                                                                                                                                 if(!(_loc39_ && Boolean(_loc3_)))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc6_ = §§pop();
                                                                                                                                                                                       if(!(_loc39_ && Boolean(_loc2_)))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1944);
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr2322);
                                                                                                                                                                                    addr1936:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr2252);
                                                                                                                                                                              }
                                                                                                                                                                              break loop117;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr2308:
                                                                                                                                                                        addr2309:
                                                                                                                                                                        _loc20_ = §§pop();
                                                                                                                                                                        break loop136;
                                                                                                                                                                     }
                                                                                                                                                                     addr2590:
                                                                                                                                                                     _loc20_ = §§pop();
                                                                                                                                                                     §§goto(addr2591);
                                                                                                                                                                     addr1913:
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr2195);
                                                                                                                                                               addr1902:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr2605);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr2044);
                                                                                                                                                      }
                                                                                                                                                      break loop87;
                                                                                                                                                   }
                                                                                                                                                   addr1875:
                                                                                                                                                }
                                                                                                                                                break loop87;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr2103);
                                                                                                                                       addr1867:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr1971:
                                                                                                                                       _loc20_ = §§pop();
                                                                                                                                       addr1972:
                                                                                                                                       if(_loc9_.length < _loc20_)
                                                                                                                                       {
                                                                                                                                          _loc20_ = _loc9_.length;
                                                                                                                                          if(_loc39_ && Boolean(_loc2_))
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§push(Math.floor(this.randomize() * (4 - _loc20_)));
                                                                                                                                    }
                                                                                                                                    _loc26_ = §§pop();
                                                                                                                                    §§goto(addr1999);
                                                                                                                                    §§push(0);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc38_)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 §§push(_loc34_);
                                                                                                                                 if(!_loc39_)
                                                                                                                                 {
                                                                                                                                    addr1738:
                                                                                                                                    §§push(§§pop() == 0);
                                                                                                                                 }
                                                                                                                                 §§goto(addr2145);
                                                                                                                              }
                                                                                                                              addr1783:
                                                                                                                              §§push(§§pop());
                                                                                                                              if(_loc38_ || Boolean(this))
                                                                                                                              {
                                                                                                                              }
                                                                                                                              §§goto(addr2699);
                                                                                                                           }
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(!_loc39_)
                                                                                                                              {
                                                                                                                                 §§push(2);
                                                                                                                                 if(!(_loc39_ && Boolean(this)))
                                                                                                                                 {
                                                                                                                                    _loc20_ = §§pop();
                                                                                                                                    §§goto(addr1835);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr1818);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr2121);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(_loc25_);
                                                                                                                              if(_loc38_ || Boolean(param1))
                                                                                                                              {
                                                                                                                                 addr1762:
                                                                                                                                 §§push(§§pop() == 4);
                                                                                                                                 if(!_loc39_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                    if(_loc38_ || Boolean(this))
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(!_loc39_)
                                                                                                                                          {
                                                                                                                                             addr1777:
                                                                                                                                             §§pop();
                                                                                                                                             if(_loc38_)
                                                                                                                                             {
                                                                                                                                                addr1780:
                                                                                                                                                §§push(_loc33_ == 8);
                                                                                                                                             }
                                                                                                                                             §§goto(addr2606);
                                                                                                                                          }
                                                                                                                                          §§goto(addr2071);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1783);
                                                                                                                                    }
                                                                                                                                    §§goto(addr2699);
                                                                                                                                 }
                                                                                                                                 §§goto(addr2419);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(2);
                                                                                                                              if(!(_loc39_ && Boolean(_loc3_)))
                                                                                                                              {
                                                                                                                                 if(§§pop() == §§pop())
                                                                                                                                 {
                                                                                                                                    §§goto(addr2026);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(FoodData.DISTRO_ALL);
                                                                                                                                    if(!(_loc39_ && Boolean(_loc2_)))
                                                                                                                                    {
                                                                                                                                       _loc35_ = §§pop();
                                                                                                                                       if(_loc38_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr2044);
                                                                                                                                       }
                                                                                                                                       §§goto(addr2137);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr2628);
                                                                                                                              }
                                                                                                                              §§goto(addr2654);
                                                                                                                           }
                                                                                                                           addr2017:
                                                                                                                        }
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(!(_loc39_ && Boolean(this)))
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              if(_loc38_)
                                                                                                                              {
                                                                                                                                 §§push(_loc34_ == 0);
                                                                                                                                 if(_loc39_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 §§goto(addr2091);
                                                                                                                              }
                                                                                                                              §§goto(addr2333);
                                                                                                                           }
                                                                                                                           §§goto(addr2699);
                                                                                                                        }
                                                                                                                        §§goto(addr1807);
                                                                                                                     }
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        addr1701:
                                                                                                                        §§goto(addr1703);
                                                                                                                        §§push(_loc25_ == 3);
                                                                                                                     }
                                                                                                                     §§goto(addr1956);
                                                                                                                  }
                                                                                                                  §§goto(addr2417);
                                                                                                               }
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  §§push(_loc25_);
                                                                                                                  if(!_loc39_)
                                                                                                                  {
                                                                                                                     §§push(3);
                                                                                                                     if(!_loc39_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                        if(!_loc39_)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                        }
                                                                                                                        §§goto(addr2417);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                        addr1021:
                                                                                                                        loop166:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              if(!_loc39_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(!_loc27_);
                                                                                                                                    if(_loc39_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    §§goto(addr2071);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr2743);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              if(!_loc39_)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc38_ || Boolean(this))
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    §§goto(addr1712);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       _loc5_.addSide(_loc22_,6,FoodData.DISTRO_ALL);
                                                                                                                                       §§push(_loc28_);
                                                                                                                                       §§push(6);
                                                                                                                                       if(!_loc39_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!_loc38_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1936);
                                                                                                                                          }
                                                                                                                                          §§goto(addr2322);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr1701);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       _loc5_.addSide(_loc22_,_loc25_,FoodData.DISTRO_ALL);
                                                                                                                                    }
                                                                                                                                    §§goto(addr2605);
                                                                                                                                 }
                                                                                                                                 addr1057:
                                                                                                                              }
                                                                                                                              break loop166;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr1020:
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(_loc38_)
                                                                                                               {
                                                                                                                  _loc5_.addSide(_loc22_,8,FoodData.DISTRO_ALL);
                                                                                                                  §§push(_loc28_);
                                                                                                                  if(_loc38_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + 8);
                                                                                                                     if(!_loc39_)
                                                                                                                     {
                                                                                                                        _loc28_ = §§pop();
                                                                                                                        if(!_loc39_)
                                                                                                                        {
                                                                                                                           continue loop136;
                                                                                                                        }
                                                                                                                        §§goto(addr1875);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc6_ = §§pop();
                                                                                                                           if(!_loc39_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc30_);
                                                                                                                                 §§push(_loc20_);
                                                                                                                                 if(!(_loc39_ && Boolean(_loc3_)))
                                                                                                                                 {
                                                                                                                                    if(§§pop() < §§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc9_.length == 0)
                                                                                                                                       {
                                                                                                                                          if(!_loc38_)
                                                                                                                                          {
                                                                                                                                             addr1962:
                                                                                                                                             §§push(Math.ceil(this.randomize() * 4));
                                                                                                                                             if(_loc38_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1971);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr2772);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(2);
                                                                                                                                          }
                                                                                                                                          addr1354:
                                                                                                                                       }
                                                                                                                                       §§goto(addr2030);
                                                                                                                                    }
                                                                                                                                    addr1462:
                                                                                                                                    §§push(_loc25_);
                                                                                                                                    if(_loc38_ || Boolean(this))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() == 3);
                                                                                                                                       if(!(§§pop() == 3))
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          if(!(_loc39_ && Boolean(_loc3_)))
                                                                                                                                          {
                                                                                                                                             §§push(_loc25_);
                                                                                                                                             if(!(_loc39_ && Boolean(_loc2_)))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() == 4);
                                                                                                                                                if(_loc38_ || Boolean(_loc3_))
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                §§goto(addr2058);
                                                                                                                                             }
                                                                                                                                             addr1654:
                                                                                                                                             §§push(§§pop() == 3);
                                                                                                                                             §§push(§§pop() == 3);
                                                                                                                                             if(!_loc39_)
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   if(!(_loc39_ && Boolean(this)))
                                                                                                                                                   {
                                                                                                                                                      addr1667:
                                                                                                                                                      §§pop();
                                                                                                                                                      addr1669:
                                                                                                                                                      §§push(_loc25_ == 4);
                                                                                                                                                      if(_loc38_)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr2438);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1777);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1673);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(!_loc39_)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc38_)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                §§push(_loc29_);
                                                                                                                                                §§push(1);
                                                                                                                                                if(_loc38_ || Boolean(_loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                                                                }
                                                                                                                                                §§goto(addr2625);
                                                                                                                                             }
                                                                                                                                             §§goto(addr2698);
                                                                                                                                          }
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             §§push(1);
                                                                                                                                             if(_loc38_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(_loc38_ || Boolean(_loc2_))
                                                                                                                                                {
                                                                                                                                                   _loc20_ = §§pop();
                                                                                                                                                   if(_loc38_ || Boolean(this))
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc31_);
                                                                                                                                                         if(_loc38_ || Boolean(_loc2_))
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() >= _loc20_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc39_ && Boolean(_loc2_))
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1913);
                                                                                                                                                            }
                                                                                                                                                            else if(_loc11_.length == 0)
                                                                                                                                                            {
                                                                                                                                                               if(_loc39_ && Boolean(this))
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1999);
                                                                                                                                                            }
                                                                                                                                                            else if(_loc6_ >= 1)
                                                                                                                                                            {
                                                                                                                                                               §§push(Math.floor(this.randomize() * _loc11_.length));
                                                                                                                                                               if(!(_loc39_ && Boolean(_loc2_)))
                                                                                                                                                               {
                                                                                                                                                                  _loc21_ = §§pop();
                                                                                                                                                                  if(!(_loc39_ && Boolean(_loc3_)))
                                                                                                                                                                  {
                                                                                                                                                                     _loc22_ = _loc11_[_loc21_];
                                                                                                                                                                     if(!_loc39_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc11_.splice(_loc21_,1);
                                                                                                                                                                        _loc5_.addSide(_loc22_,_loc25_,FoodData.DISTRO_LEFT);
                                                                                                                                                                        §§push(_loc33_);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc25_);
                                                                                                                                                                           addr1605:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr2615);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr2185);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr2438);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1669);
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr2347);
                                                                                                                                                      addr1634:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr2686);
                                                                                                                                                }
                                                                                                                                                loop119:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc33_ = §§pop();
                                                                                                                                                   if(!(_loc39_ && Boolean(_loc3_)))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc31_);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + 1);
                                                                                                                                                         addr1617:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(!_loc39_)
                                                                                                                                                            {
                                                                                                                                                               _loc31_ = §§pop();
                                                                                                                                                               §§push(_loc6_ - 1);
                                                                                                                                                               if(!_loc39_)
                                                                                                                                                               {
                                                                                                                                                                  _loc6_ = §§pop();
                                                                                                                                                                  if(!(_loc39_ && Boolean(param1)))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1634);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr2704);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1762);
                                                                                                                                                            }
                                                                                                                                                            break loop119;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr2704);
                                                                                                                                                addr1607:
                                                                                                                                             }
                                                                                                                                             §§goto(addr2730);
                                                                                                                                          }
                                                                                                                                          §§push(_loc25_);
                                                                                                                                          if(!_loc39_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1654);
                                                                                                                                          }
                                                                                                                                          §§goto(addr2460);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1674);
                                                                                                                                    }
                                                                                                                                    §§goto(addr2552);
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§goto(addr2695);
                                                                                                                              addr1452:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr1449:
                                                                                                                     }
                                                                                                                     addr2264:
                                                                                                                  }
                                                                                                                  §§goto(addr1701);
                                                                                                               }
                                                                                                               §§goto(addr1868);
                                                                                                               §§goto(addr2699);
                                                                                                            }
                                                                                                            §§goto(addr2615);
                                                                                                         }
                                                                                                         §§goto(addr2057);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(!(_loc39_ && Boolean(this)))
                                                                                                               {
                                                                                                                  §§push(_loc16_);
                                                                                                                  if(!_loc39_)
                                                                                                                  {
                                                                                                                     §§goto(addr1020);
                                                                                                                     §§push(0);
                                                                                                                  }
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr1780);
                                                                                                         }
                                                                                                         §§goto(addr1021);
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(_loc38_)
                                                                                                      {
                                                                                                         §§push(this.randomize());
                                                                                                         §§push(0.3);
                                                                                                         if(_loc38_)
                                                                                                         {
                                                                                                            §§push(§§pop() < §§pop());
                                                                                                            if(!(_loc39_ && Boolean(this)))
                                                                                                            {
                                                                                                               §§goto(addr1057);
                                                                                                            }
                                                                                                            §§goto(addr1667);
                                                                                                         }
                                                                                                         §§goto(addr1605);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr2400);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(!_loc38_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   _loc28_ = §§pop();
                                                                                                   continue loop136;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr2695);
                                                                                          }
                                                                                          addr892:
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§push(_loc20_);
                                                                                    if(!(_loc39_ && Boolean(this)))
                                                                                    {
                                                                                       continue loop152;
                                                                                    }
                                                                                    addr1999:
                                                                                    _loc4_ = §§pop();
                                                                                    addr2252:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       if(_loc38_)
                                                                                       {
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    loop77:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc25_ = §§pop();
                                                                                       if(_loc38_)
                                                                                       {
                                                                                          loop66:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             loop67:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc26_);
                                                                                                addr2409:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() < §§pop());
                                                                                                   if(!(_loc39_ && Boolean(param1)))
                                                                                                   {
                                                                                                      addr2417:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         addr2418:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               addr2419:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  §§push(_loc4_);
                                                                                                                  if(_loc38_ || Boolean(_loc3_))
                                                                                                                  {
                                                                                                                     §§push(_loc26_);
                                                                                                                     §§push(_loc20_);
                                                                                                                     if(_loc38_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc39_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() > §§pop());
                                                                                                                                 if(_loc38_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 loop57:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             if(!_loc39_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                   addr2704:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc26_);
                                                                                                                                                      §§push(_loc20_);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr2826:
                                                                                                                                             var _loc36_:Number = Math.round(this.randomize() * 4);
                                                                                                                                             §§push(_loc6_);
                                                                                                                                             §§push(1);
                                                                                                                                             if(_loc38_)
                                                                                                                                             {
                                                                                                                                                if(§§pop() >= §§pop())
                                                                                                                                                {
                                                                                                                                                   §§push(_loc36_);
                                                                                                                                                   if(_loc38_ || Boolean(param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(0);
                                                                                                                                                   }
                                                                                                                                                   loop27:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + 1);
                                                                                                                                                      loop28:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc4_ = §§pop();
                                                                                                                                                         if(!(_loc39_ && Boolean(this)))
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc4_ >= _loc36_)
                                                                                                                                                               {
                                                                                                                                                                  break loop28;
                                                                                                                                                               }
                                                                                                                                                               §§push(Math.floor(this.randomize() * _loc13_.length));
                                                                                                                                                               if(_loc39_ && Boolean(this))
                                                                                                                                                               {
                                                                                                                                                                  continue loop28;
                                                                                                                                                               }
                                                                                                                                                               _loc21_ = §§pop();
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc22_ = _loc13_[_loc21_];
                                                                                                                                                                  _loc5_.addDip(_loc22_);
                                                                                                                                                                  continue loop27;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr2893:
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr2883:
                                                                                                                                                }
                                                                                                                                                addr2896:
                                                                                                                                                var _loc37_:* = "Got Food Critic Order: ";
                                                                                                                                                §§push(0);
                                                                                                                                                if(!_loc39_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   if(!(_loc39_ && Boolean(_loc2_)))
                                                                                                                                                   {
                                                                                                                                                      _loc4_ = §§pop();
                                                                                                                                                      loop29:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                         if(_loc38_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc5_.wings);
                                                                                                                                                            if(_loc38_ || Boolean(_loc3_))
                                                                                                                                                            {
                                                                                                                                                               addr3078:
                                                                                                                                                               if(§§pop() >= §§pop().length)
                                                                                                                                                               {
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  if(_loc38_ || Boolean(param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     if(_loc38_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc4_ = §§pop();
                                                                                                                                                                        addr3049:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc4_);
                                                                                                                                                                           if(!_loc39_)
                                                                                                                                                                           {
                                                                                                                                                                              break loop29;
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc5_.dips);
                                                                                                                                                                        }
                                                                                                                                                                        addr3049:
                                                                                                                                                                        addr3111:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc37_);
                                                                                                                                                                  if(!(_loc39_ && Boolean(param1)))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc5_.wings);
                                                                                                                                                                     if(_loc38_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc4_);
                                                                                                                                                                        if(_loc38_ || Boolean(this))
                                                                                                                                                                        {
                                                                                                                                                                           addr3085:
                                                                                                                                                                           §§push(§§pop()[§§pop()].toString() + " | ");
                                                                                                                                                                           if(!(_loc39_ && Boolean(_loc3_)))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(!_loc39_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr3087:
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 if(!_loc39_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc37_ = §§pop();
                                                                                                                                                                                    addr3090:
                                                                                                                                                                                    if(_loc38_ || Boolean(_loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc4_++;
                                                                                                                                                                                       if(!_loc39_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr3049);
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc4_);
                                                                                                                                                                                       if(_loc38_ || Boolean(param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + 1);
                                                                                                                                                                                          if(!_loc39_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr3102:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc4_ = §§pop();
                                                                                                                                                                                          addr3110:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr3111);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr3090:
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc37_ = §§pop();
                                                                                                                                                                                    if(_loc38_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr3090);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr3110);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr3087:
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 if(_loc38_ || Boolean(param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc37_ = §§pop();
                                                                                                                                                                                    if(!_loc39_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc4_ + 1);
                                                                                                                                                                                       if(!(_loc39_ && Boolean(this)))
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc4_ = §§pop();
                                                                                                                                                                                          if(_loc38_ || Boolean(this))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr3049);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr3102);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr3090);
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr3087);
                                                                                                                                                                              addr3020:
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              addr3086:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr3087);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr3085:
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop()[§§pop()].toString() + " | ");
                                                                                                                                                                           if(!(_loc39_ && Boolean(_loc3_)))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(!_loc39_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr3020);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr3086);
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr3085);
                                                                                                                                                                        addr3006:
                                                                                                                                                                     }
                                                                                                                                                                     loop30:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc4_);
                                                                                                                                                                        addr3081:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr3085);
                                                                                                                                                                           continue loop30;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr3115:
                                                                                                                                                                     §_-5i§.§_-CE§(_loc37_);
                                                                                                                                                                     return _loc5_;
                                                                                                                                                                     addr3080:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr3080);
                                                                                                                                                               }
                                                                                                                                                               addr3078:
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() < §§pop().length)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr3078);
                                                                                                                                                                  §§push(_loc37_);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr3115);
                                                                                                                                                            }
                                                                                                                                                            addr3113:
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_.sides);
                                                                                                                                                         if(_loc38_ || Boolean(_loc2_))
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() >= §§pop().length)
                                                                                                                                                            {
                                                                                                                                                               §§push(0);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc37_);
                                                                                                                                                               if(_loc38_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc5_.sides);
                                                                                                                                                                  if(!(_loc39_ && Boolean(_loc2_)))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc4_);
                                                                                                                                                                     if(_loc38_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr3006);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr3081);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr3115);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr3078);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr3110);
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr3113);
                                                                                                                                                   }
                                                                                                                                                   addr3067:
                                                                                                                                                   _loc4_ = §§pop();
                                                                                                                                                   if(!(_loc39_ && Boolean(_loc2_)))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr3110);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr3115);
                                                                                                                                                }
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(_loc38_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr3067);
                                                                                                                                                }
                                                                                                                                                §§goto(addr3049);
                                                                                                                                             }
                                                                                                                                             if(§§pop() > §§pop())
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                if(!_loc39_)
                                                                                                                                                {
                                                                                                                                                   _loc4_ = §§pop();
                                                                                                                                                   if(_loc38_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr2893);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr2874);
                                                                                                                                                }
                                                                                                                                                §§goto(addr2883);
                                                                                                                                             }
                                                                                                                                             §§goto(addr2896);
                                                                                                                                          }
                                                                                                                                          addr2700:
                                                                                                                                       }
                                                                                                                                       addr2708:
                                                                                                                                       loop8:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             break loop67;
                                                                                                                                          }
                                                                                                                                          if(_loc9_.length > 0)
                                                                                                                                          {
                                                                                                                                             if(!(_loc39_ && Boolean(this)))
                                                                                                                                             {
                                                                                                                                                §§push(Math.floor(this.randomize() * _loc7_.length));
                                                                                                                                                loop16:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc21_ = §§pop();
                                                                                                                                                   if(!_loc39_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc7_[_loc21_]);
                                                                                                                                                      if(!_loc39_)
                                                                                                                                                      {
                                                                                                                                                         _loc22_ = §§pop();
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc24_ = §§pop();
                                                                                                                                                         if(_loc38_)
                                                                                                                                                         {
                                                                                                                                                            _loc9_.splice(_loc23_,1);
                                                                                                                                                            _loc5_.addWings(_loc22_,_loc24_,_loc25_,_loc35_);
                                                                                                                                                         }
                                                                                                                                                         addr2823:
                                                                                                                                                         loop9:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                            addr2824:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(3);
                                                                                                                                                               loop49:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() < §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc4_);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(2);
                                                                                                                                                                        if(_loc39_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop49;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() == §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              §§push(FoodData.DISTRO_RIGHT);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 if(!_loc39_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc35_ = §§pop();
                                                                                                                                                                                    if(_loc38_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(3);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          if(!(_loc39_ && Boolean(this)))
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc25_ = §§pop();
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr2686:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                                                                   §§push(_loc26_);
                                                                                                                                                                                                   if(_loc39_ && Boolean(this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop8;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() < §§pop());
                                                                                                                                                                                                      if(_loc38_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop57;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr2700);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc21_ = §§pop();
                                                                                                                                                                                                if(!(_loc38_ || Boolean(_loc3_)))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop9;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(FoodData.DISTRO_LEFT);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr2655:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc35_ = §§pop();
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(3);
                                                                                                                                                                                       if(!_loc39_)
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                             break loop153;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                             if(!(_loc38_ || Boolean(_loc3_)))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop16;
                                                                                                                                                                                             }
                                                                                                                                                                                             _loc25_ = §§pop();
                                                                                                                                                                                             if(_loc38_ || Boolean(param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr2686);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr2670:
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc4_);
                                                                                                                                                                              if(!(_loc39_ && Boolean(this)))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(1);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() == §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr2655);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(FoodData.DISTRO_ALL);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc35_ = §§pop();
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr2670);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr2704);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr2826);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr2802:
                                                                                                                                                   }
                                                                                                                                                   addr2798:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr2802);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Math.floor(this.randomize() * _loc9_.length));
                                                                                                                                                addr2790:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc23_ = §§pop();
                                                                                                                                                   if(!(_loc39_ && Boolean(_loc2_)))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr2798);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc4_);
                                                                                                                                             if(!_loc39_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + 1);
                                                                                                                                                   if(!_loc39_)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         addr2822:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc4_ = §§pop();
                                                                                                                                                            §§goto(addr2823);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr2824);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr2435:
                                                                                                                           }
                                                                                                                           addr2707:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr2708);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr2432:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr2707);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  loop54:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + 1);
                                                                                                                     addr2552:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!_loc39_)
                                                                                                                        {
                                                                                                                           _loc4_ = §§pop();
                                                                                                                           if(!(_loc39_ && Boolean(_loc2_)))
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc4_);
                                                                                                                                 if(!_loc39_)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(3);
                                                                                                                                       if(_loc38_)
                                                                                                                                       {
                                                                                                                                          if(§§pop() < §§pop())
                                                                                                                                          {
                                                                                                                                             §§push(_loc4_);
                                                                                                                                             §§push(2);
                                                                                                                                             if(!_loc39_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() == §§pop())
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(FoodData.DISTRO_RIGHT);
                                                                                                                                                         addr2332:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc35_ = §§pop();
                                                                                                                                                            addr2333:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               continue loop77;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                      if(!(_loc38_ || Boolean(_loc2_)))
                                                                                                                                                      {
                                                                                                                                                         continue loop67;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(1);
                                                                                                                                                         if(_loc38_ || Boolean(_loc3_))
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() == §§pop())
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc39_ && Boolean(_loc2_)))
                                                                                                                                                               {
                                                                                                                                                                  §§push(FoodData.DISTRO_LEFT);
                                                                                                                                                                  loop97:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc35_ = §§pop();
                                                                                                                                                                     addr2367:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(6);
                                                                                                                                                                        if(_loc38_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           if(!(_loc39_ && Boolean(param1)))
                                                                                                                                                                           {
                                                                                                                                                                              addr2378:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc25_ = §§pop();
                                                                                                                                                                                 continue loop66;
                                                                                                                                                                              }
                                                                                                                                                                              addr2378:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr2622);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        break loop97;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr2662);
                                                                                                                                                                  addr2366:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc5_.addWings(_loc22_,_loc24_,_loc25_,_loc35_);
                                                                                                                                                                     addr2550:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop54;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr2544:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§push(FoodData.DISTRO_ALL);
                                                                                                                                                               if(!(_loc39_ && Boolean(_loc2_)))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(!(_loc39_ && Boolean(this)))
                                                                                                                                                                  {
                                                                                                                                                                     _loc35_ = §§pop();
                                                                                                                                                                     if(_loc38_)
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(4);
                                                                                                                                                                           if(_loc38_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc25_ = §§pop();
                                                                                                                                                                              if(_loc38_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop66;
                                                                                                                                                                              }
                                                                                                                                                                              addr2595:
                                                                                                                                                                              addr2466:
                                                                                                                                                                              addr2595:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc11_.splice(_loc21_,1);
                                                                                                                                                                                 if(!(_loc38_ || Boolean(param1)))
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 _loc5_.addSide(_loc22_,_loc25_,_loc35_);
                                                                                                                                                                                 if(!_loc39_)
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr2550);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr2484:
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Math.floor(this.randomize() * _loc11_.length));
                                                                                                                                                                                       if(!(_loc39_ && Boolean(_loc2_)))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr2730);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr2802);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr2715:
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§push(_loc9_.length);
                                                                                                                                                                              if(!(_loc39_ && Boolean(_loc2_)))
                                                                                                                                                                              {
                                                                                                                                                                                 addr2605:
                                                                                                                                                                                 _loc20_ = §§pop();
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr2622);
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr2670);
                                                                                                                                                                        addr2400:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr2782);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr2658);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr2655);
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr2328:
                                                                                                                                             }
                                                                                                                                             §§goto(addr2622);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr2570:
                                                                                                                                          }
                                                                                                                                          §§goto(addr2826);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr2654);
                                                                                                                                    addr2566:
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§goto(addr2822);
                                                                                                                              addr2563:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr2591:
                                                                                                                              if(_loc9_.length < _loc20_)
                                                                                                                              {
                                                                                                                                 §§goto(addr2595);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr2615:
                                                                                                                           _loc26_ = Math.floor(this.randomize() * (3 - _loc20_));
                                                                                                                           _loc4_ = 0;
                                                                                                                           addr2616:
                                                                                                                           §§goto(addr2802);
                                                                                                                           addr2606:
                                                                                                                        }
                                                                                                                        break loop54;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr2790);
                                                                                                               }
                                                                                                               addr2419:
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr2417:
                                                                                                   }
                                                                                                   addr2438:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc38_ || Boolean(_loc3_))
                                                                                                         {
                                                                                                            if(_loc11_.length > 0)
                                                                                                            {
                                                                                                               §§push(Math.floor(this.randomize() * _loc11_.length));
                                                                                                               if(_loc38_)
                                                                                                               {
                                                                                                                  addr2460:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc21_ = §§pop();
                                                                                                                     addr2461:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc11_[_loc21_]);
                                                                                                                        addr2465:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc22_ = §§pop();
                                                                                                                           §§goto(addr2466);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr2460:
                                                                                                               }
                                                                                                               §§goto(addr2821);
                                                                                                            }
                                                                                                            §§goto(addr2484);
                                                                                                         }
                                                                                                         break loop67;
                                                                                                      }
                                                                                                      if(_loc9_.length > 0)
                                                                                                      {
                                                                                                         §§push(Math.floor(this.randomize() * _loc7_.length));
                                                                                                         if(!(_loc39_ && Boolean(_loc2_)))
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc21_ = §§pop();
                                                                                                               if(!(_loc39_ && Boolean(_loc2_)))
                                                                                                               {
                                                                                                                  _loc22_ = _loc7_[_loc21_];
                                                                                                                  _loc23_ = Math.floor(this.randomize() * _loc9_.length);
                                                                                                                  _loc24_ = _loc9_[_loc23_];
                                                                                                                  if(!(_loc39_ && Boolean(this)))
                                                                                                                  {
                                                                                                                     _loc9_.splice(_loc23_,1);
                                                                                                                     if(!_loc39_)
                                                                                                                     {
                                                                                                                        §§goto(addr2544);
                                                                                                                     }
                                                                                                                     §§goto(addr2570);
                                                                                                                  }
                                                                                                                  §§goto(addr2644);
                                                                                                               }
                                                                                                               §§goto(addr2826);
                                                                                                            }
                                                                                                            addr2504:
                                                                                                         }
                                                                                                         §§goto(addr2818);
                                                                                                      }
                                                                                                      §§goto(addr2550);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr2709:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc11_.length > 0)
                                                                                                {
                                                                                                   if(_loc38_)
                                                                                                   {
                                                                                                      §§goto(addr2715);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc5_.addSide(_loc22_,_loc25_,_loc35_);
                                                                                                   }
                                                                                                   addr2747:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr2708);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr2407:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc22_ = _loc11_[_loc21_];
                                                                                          while(true)
                                                                                          {
                                                                                             _loc11_.splice(_loc21_,1);
                                                                                             §§goto(addr2747);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr2252:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(4);
                                                                                       if(_loc38_ || Boolean(param1))
                                                                                       {
                                                                                          if(§§pop() >= §§pop())
                                                                                          {
                                                                                             §§goto(addr2264);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             if(!_loc39_)
                                                                                             {
                                                                                                §§push(3);
                                                                                                if(_loc39_)
                                                                                                {
                                                                                                   addr2274:
                                                                                                   if(§§pop() == §§pop())
                                                                                                   {
                                                                                                      if(_loc38_)
                                                                                                      {
                                                                                                         addr2277:
                                                                                                         _loc20_ = Math.ceil(this.randomize() * 3);
                                                                                                         if(!(_loc39_ && Boolean(this)))
                                                                                                         {
                                                                                                            if(_loc9_.length < _loc20_)
                                                                                                            {
                                                                                                               if(_loc38_)
                                                                                                               {
                                                                                                                  §§push(_loc9_.length);
                                                                                                                  if(!(_loc39_ && Boolean(param1)))
                                                                                                                  {
                                                                                                                     §§goto(addr2308);
                                                                                                                  }
                                                                                                                  break loop153;
                                                                                                               }
                                                                                                               §§goto(addr2659);
                                                                                                            }
                                                                                                            §§goto(addr2309);
                                                                                                         }
                                                                                                         §§goto(addr2595);
                                                                                                      }
                                                                                                      §§goto(addr2824);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(_loc19_);
                                                                                                      if(!_loc39_)
                                                                                                      {
                                                                                                         §§push(5);
                                                                                                         if(_loc38_ || Boolean(_loc2_))
                                                                                                         {
                                                                                                            addr2582:
                                                                                                            if(§§pop() == §§pop())
                                                                                                            {
                                                                                                               §§goto(addr2590);
                                                                                                               §§push(Math.ceil(this.randomize() * 3));
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr2654);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr2824);
                                                                                             }
                                                                                             §§goto(addr2504);
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr2328);
                                                                                 }
                                                                                 §§goto(addr2695);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc25_ = §§pop();
                                                                                 §§goto(addr2686);
                                                                              }
                                                                              addr1120:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc23_ = §§pop();
                                                                              addr1383:
                                                                              while(true)
                                                                              {
                                                                                 _loc24_ = _loc9_[_loc23_];
                                                                                 if(!_loc39_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       _loc9_.splice(_loc23_,1);
                                                                                       _loc5_.addWings(_loc22_,_loc24_,_loc25_,FoodData.DISTRO_RIGHT);
                                                                                       if(_loc38_ || Boolean(_loc3_))
                                                                                       {
                                                                                          §§push(_loc34_);
                                                                                          if(_loc38_ || Boolean(_loc2_))
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + _loc25_);
                                                                                                if(_loc38_ || Boolean(this))
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc34_ = §§pop();
                                                                                                      §§push(_loc30_);
                                                                                                   }
                                                                                                   §§goto(addr1902);
                                                                                                   addr1425:
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr1867);
                                                                                             addr1416:
                                                                                          }
                                                                                          §§goto(addr2153);
                                                                                       }
                                                                                       §§goto(addr2824);
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr2782);
                                                                           }
                                                                           addr1382:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                           if(!(_loc39_ && Boolean(_loc2_)))
                                                                           {
                                                                              _loc30_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc6_ - 2);
                                                                                 if(_loc38_ || Boolean(param1))
                                                                                 {
                                                                                    §§goto(addr1449);
                                                                                    §§push(§§pop());
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr1738);
                                                                           }
                                                                           §§goto(addr1902);
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  _loc26_ = §§pop();
                                                                  §§goto(addr2321);
                                                               }
                                                            }
                                                            addr852:
                                                            _loc20_ = §§pop();
                                                            if(_loc38_)
                                                            {
                                                               addr867:
                                                               §§goto(addr1120);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc9_[_loc23_]);
                                                               if(_loc38_)
                                                               {
                                                                  _loc24_ = §§pop();
                                                                  if(!_loc39_)
                                                                  {
                                                                     _loc9_.splice(_loc23_,1);
                                                                     _loc5_.addWings(_loc22_,_loc24_,_loc25_,FoodData.DISTRO_LEFT);
                                                                     §§push(_loc33_);
                                                                     §§push(_loc25_);
                                                                     if(!_loc39_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc39_ && Boolean(_loc3_)))
                                                                           {
                                                                              loop131:
                                                                              while(true)
                                                                              {
                                                                                 _loc33_ = §§pop();
                                                                                 §§push(_loc29_);
                                                                                 if(_loc38_)
                                                                                 {
                                                                                    §§push(§§pop() + 1);
                                                                                    if(!_loc39_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(!(_loc39_ && Boolean(_loc2_)))
                                                                                          {
                                                                                             _loc29_ = §§pop();
                                                                                             if(!_loc39_)
                                                                                             {
                                                                                                §§push(_loc6_);
                                                                                             }
                                                                                             §§goto(addr2137);
                                                                                          }
                                                                                          §§goto(addr2605);
                                                                                       }
                                                                                       addr1313:
                                                                                    }
                                                                                    §§goto(addr2704);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(2);
                                                                                    if(_loc38_ || Boolean(param1))
                                                                                    {
                                                                                       _loc6_ = §§pop() - §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc29_);
                                                                                          if(_loc38_)
                                                                                          {
                                                                                             §§push(_loc20_);
                                                                                             if(_loc39_)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr2409);
                                                                                          }
                                                                                          break;
                                                                                          _loc6_ = §§pop() - §§pop();
                                                                                       }
                                                                                       §§goto(addr1617);
                                                                                       addr1336:
                                                                                    }
                                                                                    break loop131;
                                                                                 }
                                                                              }
                                                                              addr1306:
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr1354);
                                                                        addr1297:
                                                                     }
                                                                     while(§§pop() < §§pop())
                                                                     {
                                                                        if(_loc9_.length == 0)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc6_ < 2)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(Math.floor(this.randomize() * _loc7_.length));
                                                                     }
                                                                     §§goto(addr1452);
                                                                  }
                                                                  §§goto(addr2277);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr2465);
                                                            addr1273:
                                                         }
                                                         else
                                                         {
                                                            §§push(8);
                                                            if(!_loc39_)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc39_)
                                                               {
                                                                  _loc25_ = §§pop();
                                                                  §§goto(addr521);
                                                               }
                                                               §§goto(addr1416);
                                                            }
                                                         }
                                                         §§push(§§pop());
                                                         if(_loc38_ || Boolean(_loc3_))
                                                         {
                                                            _loc20_ = §§pop();
                                                            §§goto(addr1835);
                                                         }
                                                         §§goto(addr2704);
                                                      }
                                                      else if(_loc26_ < 0.3)
                                                      {
                                                         if(!(_loc39_ && Boolean(this)))
                                                         {
                                                            §§push(3);
                                                            if(!(_loc39_ && Boolean(_loc3_)))
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc39_ && Boolean(_loc3_)))
                                                               {
                                                                  _loc25_ = §§pop();
                                                                  if(_loc38_)
                                                                  {
                                                                     §§goto(addr578);
                                                                  }
                                                                  §§goto(addr1972);
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc15_ = §§pop();
                                                                  §§goto(addr787);
                                                               }
                                                            }
                                                            §§goto(addr2670);
                                                         }
                                                         §§goto(addr2686);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc26_);
                                                         §§push(0.6);
                                                         if(!_loc39_)
                                                         {
                                                            if(§§pop() < §§pop())
                                                            {
                                                               §§push(4);
                                                               if(!(_loc39_ && Boolean(_loc3_)))
                                                               {
                                                                  _loc25_ = §§pop();
                                                                  §§goto(addr578);
                                                               }
                                                               §§goto(addr892);
                                                            }
                                                            else
                                                            {
                                                               §§push(6);
                                                               if(_loc38_ || Boolean(_loc2_))
                                                               {
                                                                  _loc25_ = §§pop();
                                                                  §§goto(addr578);
                                                               }
                                                            }
                                                            §§goto(addr2670);
                                                         }
                                                         else
                                                         {
                                                            addr1170:
                                                            if(§§pop() < §§pop())
                                                            {
                                                               §§push(4);
                                                               if(!_loc39_)
                                                               {
                                                                  _loc25_ = §§pop();
                                                                  if(_loc38_)
                                                                  {
                                                                     addr1216:
                                                                     _loc20_ = 1;
                                                                     if(!(_loc39_ && Boolean(_loc2_)))
                                                                     {
                                                                        §§goto(addr1336);
                                                                     }
                                                                     §§goto(addr1841);
                                                                  }
                                                                  §§goto(addr2367);
                                                               }
                                                               §§goto(addr2347);
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc26_);
                                                               if(!_loc39_)
                                                               {
                                                                  §§push(0.75);
                                                                  if(!(_loc39_ && Boolean(this)))
                                                                  {
                                                                     if(§§pop() < §§pop())
                                                                     {
                                                                        if(_loc38_)
                                                                        {
                                                                           §§push(5);
                                                                           if(!_loc39_)
                                                                           {
                                                                              addr1196:
                                                                              §§push(§§pop());
                                                                              if(!(_loc39_ && Boolean(param1)))
                                                                              {
                                                                                 _loc25_ = §§pop();
                                                                                 if(_loc38_ || Boolean(this))
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr2709);
                                                                              }
                                                                              §§goto(addr2060);
                                                                           }
                                                                           §§goto(addr2615);
                                                                        }
                                                                        §§goto(addr1383);
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc25_ = 6;
                                                                     }
                                                                     §§goto(addr1216);
                                                                  }
                                                                  §§goto(addr1297);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         _loc21_ = §§pop();
                                                         §§push(_loc7_[_loc21_]);
                                                         if(!_loc39_)
                                                         {
                                                            _loc22_ = §§pop();
                                                            if(!(_loc39_ && Boolean(param1)))
                                                            {
                                                               _loc23_ = Math.floor(this.randomize() * _loc9_.length);
                                                               if(!_loc39_)
                                                               {
                                                                  §§goto(addr1273);
                                                               }
                                                               §§goto(addr2103);
                                                            }
                                                            §§goto(addr1841);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr2366);
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop() != §§pop())
                                                      {
                                                         §§push(_loc4_);
                                                         if(!_loc39_)
                                                         {
                                                            §§goto(addr2017);
                                                         }
                                                         break;
                                                      }
                                                      _loc35_ = FoodData.DISTRO_RIGHT;
                                                      §§goto(addr2044);
                                                      §§goto(addr2654);
                                                   }
                                                   §§goto(addr2460);
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc28_);
                                                   if(!_loc39_)
                                                   {
                                                      §§push(_loc25_);
                                                      if(_loc38_)
                                                      {
                                                         _loc28_ = §§pop() + §§pop();
                                                         §§goto(addr1091);
                                                      }
                                                      §§goto(addr2435);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr1313);
                                                   }
                                                }
                                                §§goto(addr2605);
                                             }
                                             else
                                             {
                                                §§push(_loc19_);
                                                if(_loc38_ || Boolean(param1))
                                                {
                                                   §§push(2);
                                                   if(_loc38_ || Boolean(param1))
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         §§push(this.randomize());
                                                         if(!_loc39_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc38_ || Boolean(_loc3_))
                                                            {
                                                               _loc26_ = §§pop();
                                                               if(_loc26_ < 0.25)
                                                               {
                                                                  _loc25_ = 3;
                                                                  §§goto(addr1216);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc26_);
                                                                  if(!(_loc39_ && Boolean(param1)))
                                                                  {
                                                                     §§goto(addr1170);
                                                                     §§push(0.5);
                                                                  }
                                                               }
                                                               §§goto(addr1425);
                                                            }
                                                            §§goto(addr1306);
                                                         }
                                                         §§goto(addr2170);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc19_);
                                                         §§push(3);
                                                         if(!_loc39_)
                                                         {
                                                            addr1961:
                                                            if(§§pop() == §§pop())
                                                            {
                                                               §§goto(addr1962);
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc19_);
                                                               if(_loc38_ || Boolean(_loc2_))
                                                               {
                                                                  §§goto(addr2274);
                                                                  §§push(4);
                                                               }
                                                            }
                                                            §§goto(addr2566);
                                                         }
                                                      }
                                                      §§goto(addr2625);
                                                   }
                                                   §§goto(addr2582);
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr1607);
                                             }
                                          }
                                          while(true)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                _loc21_ = Math.floor(this.randomize() * _loc7_.length);
                                                if(!_loc39_)
                                                {
                                                   _loc22_ = _loc7_[_loc21_];
                                                   §§goto(addr1382);
                                                   §§push(Math.floor(this.randomize() * _loc9_.length));
                                                }
                                                break;
                                             }
                                             §§goto(addr1462);
                                             §§goto(addr2824);
                                          }
                                          §§goto(addr2030);
                                       }
                                       while(true)
                                       {
                                          §§push(_loc20_);
                                          while(true)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                if(!(_loc39_ && Boolean(this)))
                                                {
                                                   addr797:
                                                   §§push(_loc20_);
                                                   if(!(_loc39_ && Boolean(_loc2_)))
                                                   {
                                                      §§push(§§pop() == 2);
                                                      if(!(§§pop() == 2))
                                                      {
                                                         if(_loc38_)
                                                         {
                                                            §§pop();
                                                            §§push(_loc25_);
                                                            if(!_loc39_)
                                                            {
                                                               §§push(§§pop() == 8);
                                                            }
                                                            §§goto(addr1617);
                                                         }
                                                         §§goto(addr1008);
                                                      }
                                                      addr817:
                                                      §§push(§§pop());
                                                      if(!(_loc39_ && Boolean(param1)))
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§pop();
                                                            §§push(_loc27_);
                                                            if(_loc38_ || Boolean(param1))
                                                            {
                                                               §§push(§§pop());
                                                            }
                                                            §§goto(addr1783);
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc39_ && Boolean(_loc3_)))
                                                            {
                                                               §§push(1);
                                                               if(_loc38_ || Boolean(this))
                                                               {
                                                                  §§goto(addr852);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr1196);
                                                               }
                                                            }
                                                            §§goto(addr2329);
                                                         }
                                                         else
                                                         {
                                                            _loc20_ = Math.ceil(this.randomize() * 2);
                                                            if(_loc38_)
                                                            {
                                                               §§goto(addr867);
                                                            }
                                                         }
                                                         §§goto(addr2460);
                                                      }
                                                      §§goto(addr1711);
                                                   }
                                                   §§goto(addr2240);
                                                }
                                                §§goto(addr1026);
                                             }
                                             else
                                             {
                                                §§push(_loc6_);
                                                §§push(2);
                                                if(!_loc39_)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      §§goto(addr797);
                                                   }
                                                   else
                                                   {
                                                      _loc21_ = Math.floor(this.randomize() * _loc7_.length);
                                                      §§push(_loc7_[_loc21_]);
                                                      if(!(_loc39_ && Boolean(this)))
                                                      {
                                                         _loc22_ = §§pop();
                                                         if(_loc38_ || Boolean(this))
                                                         {
                                                            §§push(Math.floor(this.randomize() * _loc9_.length));
                                                            if(!(_loc39_ && Boolean(_loc2_)))
                                                            {
                                                               _loc23_ = §§pop();
                                                               if(!_loc39_)
                                                               {
                                                                  _loc24_ = _loc9_[_loc23_];
                                                                  _loc9_.splice(_loc23_,1);
                                                                  §§push(_loc25_ <= 4);
                                                                  if(_loc25_ <= 4)
                                                                  {
                                                                     §§pop();
                                                                     if(!_loc39_)
                                                                     {
                                                                        §§push(_loc27_);
                                                                        if(_loc38_)
                                                                        {
                                                                           §§push(!§§pop());
                                                                        }
                                                                        §§goto(addr957);
                                                                     }
                                                                     §§goto(addr2484);
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     §§pop();
                                                                     if(_loc38_)
                                                                     {
                                                                        §§push(_loc15_);
                                                                        if(!_loc39_)
                                                                        {
                                                                           §§push(§§pop() == 1);
                                                                           if(_loc39_ && Boolean(_loc2_))
                                                                           {
                                                                           }
                                                                           §§goto(addr1734);
                                                                        }
                                                                        §§goto(addr2240);
                                                                     }
                                                                     §§goto(addr1919);
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc38_)
                                                                     {
                                                                        §§pop();
                                                                        if(_loc38_)
                                                                        {
                                                                           §§push(this.randomize());
                                                                           if(!(_loc39_ && Boolean(this)))
                                                                           {
                                                                              §§push(0.2);
                                                                              if(!(_loc39_ && Boolean(_loc3_)))
                                                                              {
                                                                                 §§push(§§pop() < §§pop());
                                                                                 if(_loc39_)
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr1673);
                                                                              }
                                                                              §§goto(addr2435);
                                                                           }
                                                                           §§goto(addr1634);
                                                                        }
                                                                        §§goto(addr2563);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr817);
                                                                     }
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     §§push(_loc5_);
                                                                     §§push(_loc22_);
                                                                     §§push(_loc24_);
                                                                     §§push(_loc25_);
                                                                     if(_loc38_ || Boolean(_loc2_))
                                                                     {
                                                                        §§push(§§pop() * 2);
                                                                     }
                                                                     §§pop().addWings(§§pop(),§§pop(),§§pop(),FoodData.DISTRO_ALL);
                                                                     §§push(_loc28_);
                                                                     §§push(_loc25_ * 2);
                                                                     if(!(_loc38_ || Boolean(this)))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc39_)
                                                                     {
                                                                        _loc28_ = §§pop();
                                                                        if(_loc38_)
                                                                        {
                                                                           _loc27_ = true;
                                                                           if(!(_loc39_ && Boolean(_loc2_)))
                                                                           {
                                                                              addr762:
                                                                              §§push(_loc6_);
                                                                              if(_loc38_ || Boolean(this))
                                                                              {
                                                                                 §§push(2);
                                                                                 if(!(_loc39_ && Boolean(param1)))
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(!_loc39_)
                                                                                    {
                                                                                       _loc6_ = §§pop();
                                                                                       §§goto(addr786);
                                                                                       §§push(_loc15_ + 1);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr1490);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr2053);
                                                                              }
                                                                              §§goto(addr1605);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr1438);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr1082);
                                                                        }
                                                                        §§goto(addr2605);
                                                                     }
                                                                     §§goto(addr1714);
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc5_.addWings(_loc22_,_loc24_,_loc25_,FoodData.DISTRO_ALL);
                                                                     §§push(_loc28_ + _loc25_);
                                                                     if(!(_loc39_ && Boolean(_loc3_)))
                                                                     {
                                                                        _loc28_ = §§pop();
                                                                        §§goto(addr762);
                                                                     }
                                                                  }
                                                                  §§goto(addr1617);
                                                               }
                                                               §§goto(addr2162);
                                                            }
                                                            §§goto(addr2635);
                                                         }
                                                         §§goto(addr1390);
                                                      }
                                                   }
                                                   §§goto(addr1872);
                                                }
                                                else
                                                {
                                                   §§goto(addr1961);
                                                }
                                             }
                                             §§goto(addr2566);
                                          }
                                          §§goto(addr1962);
                                       }
                                    }
                                    §§goto(addr391);
                                 }
                                 else
                                 {
                                    §§push(_loc3_.getRank());
                                    §§push(6);
                                 }
                              }
                              if(§§pop() < §§pop())
                              {
                                 if(_loc38_)
                                 {
                                 }
                              }
                              §§goto(addr391);
                           }
                           §§push(1);
                           if(_loc38_)
                           {
                              §§push(§§pop());
                              if(_loc38_)
                              {
                                 §§goto(addr390);
                              }
                              §§goto(addr393);
                           }
                           §§goto(addr392);
                        }
                        while(true)
                        {
                           §§goto(addr309);
                        }
                        addr308:
                        _loc4_ = §§pop();
                        §§goto(addr308);
                     }
                     addr289:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc38_)
                           {
                              §§goto(addr292);
                           }
                        }
                        §§goto(addr297);
                     }
                  }
               }
               addr207:
               §§goto(addr313);
               §§push(0);
               while(§§pop() < _loc10_.length)
               {
                  §§push(_loc3_.hasTopping(_loc10_[_loc4_]));
                  if(_loc38_)
                  {
                     break loop0;
                  }
                  §§goto(addr289);
               }
               §§push(0);
               if(!_loc39_)
               {
                  §§goto(addr210);
               }
               §§goto(addr273);
               _loc4_ = §§pop();
            }
            while(true)
            {
               if(§§pop())
               {
                  if(_loc38_)
                  {
                     _loc9_.push(_loc10_[_loc4_]);
                     if(_loc39_ && Boolean(param1))
                     {
                     }
                     §§goto(addr222);
                  }
                  §§goto(addr207);
               }
               §§push(_loc4_ + 1);
               if(!(_loc39_ && Boolean(param1)))
               {
                  _loc4_ = §§pop();
                  §§goto(addr203);
               }
               break;
            }
            §§goto(addr251);
         }
         if(param1 > -1)
         {
            if(!(_loc39_ && Boolean(this)))
            {
               _loc2_.setRandomSeed(param1);
            }
         }
         §§goto(addr52);
      }
      
      public function getAvailableOrder(param1:Number) : CustomerOrder
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:Array = null;
         var _loc13_:* = false;
         var _loc14_:* = NaN;
         var _loc15_:* = null;
         var _loc16_:Array = null;
         var _loc17_:* = null;
         var _loc18_:Array = null;
         var _loc19_:Array = null;
         var _loc2_:CustomerData = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc5_:CustomerDataFile = _loc2_.customerDataFiles[param1];
         var _loc6_:CustomerOrder = _loc5_.customerOrder;
         var _loc7_:CustomerOrder = new CustomerOrder();
         var _loc8_:Array = FoodData.getSauces();
         §§push(_loc8_.length - 1);
         if(_loc20_)
         {
            §§push(§§pop());
         }
         _loc4_ = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc20_ || Boolean(_loc3_))
            {
               while(true)
               {
                  §§push(0);
                  if(_loc20_)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!(_loc21_ && Boolean(this)))
                        {
                           §§push(0);
                           if(_loc20_ || Boolean(_loc3_))
                           {
                              §§push(§§pop());
                              if(_loc20_ || Boolean(param1))
                              {
                                 _loc4_ = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    break loop0;
                                 }
                              }
                              addr427:
                              _loc4_ = §§pop();
                              if(_loc20_ || Boolean(this))
                              {
                                 loop15:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    if(_loc20_ || Boolean(_loc3_))
                                    {
                                       addr640:
                                       §§push(_loc6_.sides);
                                       if(!(_loc21_ && Boolean(_loc3_)))
                                       {
                                          loop14:
                                          while(true)
                                          {
                                             if(§§pop() >= §§pop().length)
                                             {
                                                if(_loc20_ || Boolean(this))
                                                {
                                                }
                                             }
                                             else
                                             {
                                                §§push(_loc6_.sides);
                                                if(!(_loc21_ && Boolean(_loc3_)))
                                                {
                                                   addr577:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      if(!(_loc21_ && Boolean(param1)))
                                                      {
                                                         addr583:
                                                         while(true)
                                                         {
                                                            §§push(§§pop()[§§pop()][0]);
                                                            if(_loc20_)
                                                            {
                                                               _loc15_ = §§pop();
                                                               if(_loc20_ || Boolean(_loc2_))
                                                               {
                                                                  §§push([]);
                                                                  if(_loc20_ || Boolean(_loc2_))
                                                                  {
                                                                     _loc16_ = §§pop();
                                                                     if(!(_loc21_ && Boolean(param1)))
                                                                     {
                                                                        if(_loc3_.hasTopping(_loc15_))
                                                                        {
                                                                           if(_loc21_)
                                                                           {
                                                                           }
                                                                           addr506:
                                                                           _loc16_[2] = _loc6_.sides[_loc4_][2];
                                                                           if(_loc21_ && Boolean(this))
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           _loc7_.sides.push(_loc16_);
                                                                        }
                                                                        addr526:
                                                                        §§push(_loc4_);
                                                                        if(!_loc21_)
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                           if(!_loc21_)
                                                                           {
                                                                              §§push(§§pop());
                                                                           }
                                                                        }
                                                                        _loc4_ = §§pop();
                                                                        continue loop15;
                                                                     }
                                                                     _loc16_[0] = _loc15_;
                                                                     if(_loc20_)
                                                                     {
                                                                        _loc16_[1] = _loc6_.sides[_loc4_][1];
                                                                        §§goto(addr506);
                                                                     }
                                                                     §§goto(addr526);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr676:
                                                                  §§push([FoodData.DIP_RANCH]);
                                                               }
                                                               addr677:
                                                               _loc19_ = §§pop();
                                                               if(!(_loc21_ && Boolean(_loc2_)))
                                                               {
                                                                  _loc7_.dips.push(_loc19_);
                                                               }
                                                               break loop14;
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            _loc17_ = §§pop();
                                                         }
                                                         §§goto(addr677);
                                                         addr583:
                                                         addr454:
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop()[§§pop()][0]);
                                                      if(_loc20_)
                                                      {
                                                         §§goto(addr583);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr676);
                                                   addr577:
                                                   addr446:
                                                }
                                             }
                                             addr651:
                                             §§push(§§pop().length > 0);
                                             if(!_loc21_)
                                             {
                                                addr657:
                                                if(§§pop())
                                                {
                                                   if(_loc21_ && Boolean(this))
                                                   {
                                                   }
                                                }
                                             }
                                             addr673:
                                             if(§§pop())
                                             {
                                                §§goto(addr676);
                                             }
                                             break;
                                          }
                                          return _loc7_;
                                          addr551:
                                       }
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop().length)
                                          {
                                             §§push(_loc6_.dips);
                                             if(_loc20_ || Boolean(_loc3_))
                                             {
                                             }
                                             addr670:
                                             §§goto(addr673);
                                             §§push(§§pop().length == 0);
                                          }
                                          else
                                          {
                                             §§push(_loc6_.dips);
                                             if(!(_loc21_ && Boolean(_loc2_)))
                                             {
                                                §§goto(addr577);
                                                §§push(_loc4_);
                                             }
                                             §§goto(addr673);
                                          }
                                          §§goto(addr651);
                                       }
                                       addr640:
                                    }
                                    break;
                                 }
                                 addr564:
                                 _loc4_ = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    addr638:
                                    while(true)
                                    {
                                       §§goto(addr640);
                                    }
                                    §§goto(addr651);
                                 }
                                 addr637:
                              }
                              §§push(0);
                              if(_loc20_)
                              {
                                 §§goto(addr564);
                              }
                              §§goto(addr638);
                           }
                           addr426:
                           §§goto(addr427);
                           §§push(§§pop());
                        }
                        while(true)
                        {
                           §§push([]);
                           if(_loc20_)
                           {
                              _loc18_ = §§pop();
                              if(!(_loc21_ && Boolean(_loc3_)))
                              {
                                 if(_loc3_.hasTopping(_loc17_))
                                 {
                                    if(_loc20_)
                                    {
                                       _loc18_[0] = _loc17_;
                                       if(_loc20_ || Boolean(_loc3_))
                                       {
                                          _loc7_.dips.push(_loc18_);
                                          if(_loc21_)
                                          {
                                          }
                                       }
                                    }
                                 }
                                 §§push(_loc4_);
                                 if(!(_loc21_ && Boolean(param1)))
                                 {
                                    §§push(§§pop() + 1);
                                    if(_loc20_ || Boolean(this))
                                    {
                                       §§push(§§pop());
                                    }
                                 }
                                 _loc4_ = §§pop();
                              }
                              §§goto(addr637);
                           }
                           §§goto(addr677);
                        }
                     }
                     else
                     {
                        §§push(_loc3_.hasTopping(_loc8_[_loc4_]));
                        if(!_loc21_)
                        {
                           §§push(false);
                           if(_loc20_ || Boolean(param1))
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!(_loc21_ && Boolean(_loc3_)))
                                 {
                                    _loc8_.splice(_loc4_,1);
                                    if(_loc21_)
                                    {
                                       while(true)
                                       {
                                          _loc8_.splice(_loc9_,1);
                                          addr188:
                                          while(true)
                                          {
                                             §§push(_loc4_ + 1);
                                             if(!_loc21_)
                                             {
                                                _loc4_ = §§pop();
                                                §§goto(addr194);
                                             }
                                             break;
                                          }
                                       }
                                       addr184:
                                    }
                                    §§goto(addr638);
                                 }
                                 addr668:
                                 §§goto(addr670);
                                 §§push(_loc7_.dips);
                              }
                              §§push(_loc4_ - 1);
                              if(_loc21_)
                              {
                                 continue;
                              }
                              §§push(§§pop());
                              if(_loc20_ || Boolean(this))
                              {
                                 continue loop0;
                              }
                              addr207:
                              _loc4_ = §§pop();
                              while(true)
                              {
                                 §§push(_loc4_);
                                 §§push(_loc6_.wings);
                                 if(!(_loc21_ && Boolean(param1)))
                                 {
                                    if(§§pop() >= §§pop().length)
                                    {
                                       §§push(0);
                                       if(!(_loc21_ && Boolean(_loc3_)))
                                       {
                                          §§goto(addr426);
                                       }
                                       §§goto(addr427);
                                    }
                                    else
                                    {
                                       §§push(_loc6_.wings);
                                       if(_loc20_ || Boolean(_loc3_))
                                       {
                                          §§push(_loc4_);
                                          if(_loc20_ || Boolean(_loc2_))
                                          {
                                             §§push(§§pop()[§§pop()][0]);
                                             if(_loc20_)
                                             {
                                                _loc10_ = §§pop();
                                                §§push(_loc6_.wings);
                                                if(_loc20_ || Boolean(this))
                                                {
                                                   §§push(_loc4_);
                                                   if(_loc20_ || Boolean(_loc2_))
                                                   {
                                                      §§push(§§pop()[§§pop()][3]);
                                                      if(_loc20_ || Boolean(_loc2_))
                                                      {
                                                         _loc11_ = §§pop();
                                                         §§push([]);
                                                         if(!_loc21_)
                                                         {
                                                            _loc12_ = §§pop();
                                                            if(_loc20_ || Boolean(this))
                                                            {
                                                               §§push(true);
                                                               if(!(_loc21_ && Boolean(this)))
                                                               {
                                                                  _loc13_ = §§pop();
                                                                  §§push(_loc3_.hasTopping(_loc10_));
                                                                  if(!_loc21_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                     }
                                                                     addr393:
                                                                     §§push(_loc4_);
                                                                     if(_loc20_ || Boolean(param1))
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                        if(_loc20_)
                                                                        {
                                                                           addr404:
                                                                           §§push(§§pop());
                                                                        }
                                                                     }
                                                                     continue;
                                                                  }
                                                                  addr388:
                                                                  if(§§pop())
                                                                  {
                                                                     _loc7_.wings.push(_loc12_);
                                                                  }
                                                                  §§goto(addr393);
                                                               }
                                                               addr329:
                                                               if(§§pop())
                                                               {
                                                                  _loc12_[3] = _loc11_;
                                                                  if(_loc20_)
                                                                  {
                                                                  }
                                                                  addr387:
                                                                  §§goto(addr388);
                                                                  §§push(_loc13_);
                                                               }
                                                               else
                                                               {
                                                                  _loc12_[3] = FoodData.SAUCE_BBQ;
                                                                  if(!_loc21_)
                                                                  {
                                                                     if(_loc8_.length <= 0)
                                                                     {
                                                                        §§push(false);
                                                                        if(!_loc21_)
                                                                        {
                                                                           _loc13_ = §§pop();
                                                                           §§goto(addr387);
                                                                        }
                                                                     }
                                                                     §§goto(addr388);
                                                                  }
                                                                  §§push(0);
                                                                  if(_loc20_ || Boolean(_loc2_))
                                                                  {
                                                                     _loc14_ = §§pop();
                                                                     _loc12_[3] = _loc8_[_loc14_];
                                                                     _loc8_.splice(_loc14_,1);
                                                                     if(_loc20_ || Boolean(param1))
                                                                     {
                                                                        addr382:
                                                                        §§goto(addr387);
                                                                     }
                                                                     §§goto(addr393);
                                                                  }
                                                               }
                                                               §§goto(addr404);
                                                            }
                                                            _loc12_[0] = _loc10_;
                                                            if(!(_loc21_ && Boolean(param1)))
                                                            {
                                                               _loc12_[1] = _loc6_.wings[_loc4_][1];
                                                               _loc12_[2] = _loc6_.wings[_loc4_][2];
                                                               §§push(_loc3_.hasTopping(_loc11_));
                                                               if(!(_loc21_ && Boolean(_loc2_)))
                                                               {
                                                                  §§goto(addr329);
                                                               }
                                                               §§goto(addr388);
                                                            }
                                                            §§goto(addr382);
                                                         }
                                                      }
                                                      §§goto(addr677);
                                                   }
                                                }
                                                §§goto(addr670);
                                             }
                                             §§goto(addr583);
                                          }
                                          else
                                          {
                                             §§goto(addr454);
                                          }
                                       }
                                       §§goto(addr446);
                                    }
                                 }
                                 break;
                                 _loc4_ = §§pop();
                              }
                              §§goto(addr551);
                           }
                           §§goto(addr657);
                        }
                     }
                     §§pop();
                     if(_loc20_)
                     {
                        §§goto(addr668);
                     }
                     §§goto(addr676);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc20_ || Boolean(this))
                     {
                        §§goto(addr184);
                     }
                  }
                  §§goto(addr188);
               }
               addr176:
            }
            break;
            _loc4_ = §§pop();
         }
         while(true)
         {
            §§push(_loc6_.wings);
            if(!_loc21_)
            {
               if(§§pop() >= §§pop().length)
               {
                  if(_loc20_)
                  {
                     §§push(0);
                     if(_loc20_)
                     {
                        §§goto(addr207);
                        §§push(§§pop());
                     }
                     §§goto(addr426);
                  }
                  §§goto(addr676);
               }
               else
               {
                  §§push(Number(_loc8_.indexOf(_loc6_.wings[_loc4_][3])));
                  if(!_loc20_)
                  {
                     continue;
                  }
                  _loc9_ = §§pop();
                  §§push(_loc9_);
                  if(_loc20_)
                  {
                     §§goto(addr176);
                     §§push(-1);
                  }
               }
               §§goto(addr638);
            }
            break;
         }
         §§goto(addr640);
      }
      
      public function getCustomerIndex(param1:String) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:CustomerData = this;
         var _loc3_:* = -1;
         var _loc4_:int = 1;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() < _loc2_.customerDataFiles.length)
            {
               §§push(_loc2_.customerDataFiles);
               if(_loc5_)
               {
                  addr58:
                  §§push(_loc4_);
                  if(!_loc6_)
                  {
                     §§push(§§pop()[§§pop()].customerName == param1);
                     if(!_loc5_)
                     {
                        §§pop();
                        if(_loc5_)
                        {
                           §§push(_loc2_.customerDataFiles);
                        }
                     }
                     if(!§§pop())
                     {
                        if(_loc6_ && Boolean(_loc3_))
                        {
                        }
                     }
                     addr62:
                     if(§§pop())
                     {
                        if(_loc6_ && Boolean(_loc2_))
                        {
                           break;
                        }
                        §§push(_loc4_);
                        if(_loc5_ || Boolean(param1))
                        {
                           §§push(§§pop());
                           if(!(_loc6_ && Boolean(param1)))
                           {
                              _loc3_ = §§pop();
                              if(_loc6_)
                              {
                              }
                              break;
                           }
                           §§goto(addr106);
                        }
                     }
                     _loc4_++;
                     if(_loc6_)
                     {
                        break;
                     }
                     continue loop0;
                     continue;
                     break;
                  }
                  §§goto(addr62);
                  §§push(§§pop()[§§pop()].customerClipName == param1);
               }
               §§goto(addr58);
               §§push(_loc4_);
            }
            addr106:
            return §§pop();
         }
      }
      
      public function getCustomerName(param1:Number) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:CustomerData = this;
         var _loc3_:CustomerDataFile = _loc2_.customerDataFiles[param1];
         if(!(_loc4_ && Boolean(this)))
         {
            §§goto(addr76);
         }
         §§push(_loc2_.gameObj.workerData.gender);
         if(_loc5_)
         {
            if(§§pop() == WorkerData.GENDER_MALE)
            {
               if(_loc5_)
               {
                  return "Mandi";
               }
            }
            return "Chuck";
         }
         addr76:
         §§push(_loc3_.customerName);
         if(!_loc4_)
         {
            if(§§pop() == "ChuckOrMandi")
            {
               if(_loc5_)
               {
               }
            }
            §§push(_loc3_.customerName);
         }
         return §§pop();
      }
      
      public function getCustomerClipName(param1:Number) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:CustomerData = this;
         var _loc3_:CustomerDataFile = _loc2_.customerDataFiles[param1];
         if(!(_loc4_ && Boolean(param1)))
         {
            §§push(_loc3_.customerName);
            if(_loc5_ || Boolean(_loc2_))
            {
               if(§§pop() == "ChuckOrMandi")
               {
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     §§push(_loc2_.gameObj.workerData.gender);
                     if(!(_loc4_ && Boolean(this)))
                     {
                        if(§§pop() == WorkerData.GENDER_MALE)
                        {
                           if(_loc5_)
                           {
                           }
                        }
                     }
                  }
                  return "Mandi";
               }
               §§push(_loc3_.customerClipName);
            }
            return §§pop();
         }
         return "Chuck";
      }
      
      public function getCustomerOrderData(param1:Number) : CustomerOrder
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:CustomerData = this;
         var _loc3_:CustomerDataFile = _loc2_.customerDataFiles[param1];
         if(!(_loc5_ && Boolean(this)))
         {
            if(param1 == 1)
            {
               if(_loc4_ || Boolean(_loc3_))
               {
                  return _loc2_.getFoodCriticOrder();
               }
            }
         }
         return _loc2_.getAvailableOrder(param1);
      }
      
      public function getCustomerFirstGame(param1:Number) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:CustomerData = this;
         var _loc3_:CustomerDataFile = _loc2_.customerDataFiles[param1];
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            §§push(_loc3_.customerName);
            if(_loc5_)
            {
               if(§§pop() == "ChuckOrMandi")
               {
                  if(_loc5_ || Boolean(param1))
                  {
                     §§push(_loc2_.gameObj.workerData.gender);
                     if(_loc5_)
                     {
                        if(§§pop() == WorkerData.GENDER_MALE)
                        {
                           if(_loc5_)
                           {
                           }
                        }
                     }
                  }
                  return "Papa\'s Pizzeria";
               }
               §§push(_loc3_.customerFirstGame);
            }
            return §§pop();
         }
         return "Papa Louie";
      }
      
      public function getCustomerColor(param1:Number) : String
      {
         var _loc2_:CustomerData = this;
         var _loc3_:CustomerDataFile = _loc2_.customerDataFiles[param1];
         return _loc3_.thumbColor;
      }
      
      public function getCustomerTotal() : Number
      {
         var _loc1_:CustomerData = this;
         return _loc1_.customerDataFiles.length - 1;
      }
      
      private function getToppingRealName(param1:String) : String
      {
         var _loc2_:CustomerData = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:String = "???";
         var _loc5_:Number = Number(_loc3_.toppingIndexes.indexOf(param1));
         if(_loc5_ > -1)
         {
            _loc4_ = _loc3_.toppingNames[_loc5_];
         }
         return _loc4_;
      }
      
      public function getCustomerToppingString(param1:Number) : String
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc7_:int = 0;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:String = null;
         var _loc14_:String = null;
         var _loc15_:* = null;
         var _loc16_:int = 0;
         var _loc2_:CustomerData = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:* = "";
         var _loc5_:CustomerDataFile = _loc2_.customerDataFiles[param1];
         var _loc6_:CustomerOrder = _loc2_.getCustomerOrderData(param1);
         var _loc8_:String = "";
         var _loc9_:String = "";
         var _loc10_:Array = [];
         if(_loc17_)
         {
            _loc7_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc7_);
            §§push(_loc6_.wings);
            if(_loc17_)
            {
               if(§§pop() >= §§pop().length)
               {
                  if(_loc17_)
                  {
                     _loc7_ = 0;
                     if(!(_loc18_ && Boolean(param1)))
                     {
                        loop17:
                        while(true)
                        {
                           §§push(_loc7_);
                           if(_loc17_ || Boolean(this))
                           {
                              §§push(_loc6_.sides);
                              if(!_loc18_)
                              {
                                 addr286:
                                 if(§§pop() >= §§pop().length)
                                 {
                                    if(!_loc18_)
                                    {
                                       _loc7_ = 0;
                                       addr432:
                                       if(_loc17_)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc7_);
                                             §§push(_loc6_.dips);
                                             break loop0;
                                          }
                                          addr294:
                                       }
                                       loop9:
                                       while(true)
                                       {
                                          §§push(_loc16_);
                                          addr433:
                                          addr382:
                                          while(true)
                                          {
                                             if(§§pop() < _loc10_.length)
                                             {
                                                §§push(_loc16_);
                                                break loop17;
                                             }
                                          }
                                          addr382:
                                          if(!_loc18_)
                                          {
                                             §§push(_loc4_);
                                             if(_loc17_)
                                             {
                                                _loc4_ = §§pop() + _loc10_[_loc16_];
                                                if(!_loc17_)
                                                {
                                                   addr408:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                   }
                                                   addr408:
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(", " + _loc10_[_loc16_]);
                                                addr414:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr415:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      addr416:
                                                      while(true)
                                                      {
                                                         _loc4_ = §§pop();
                                                         addr417:
                                                         while(true)
                                                         {
                                                            _loc16_++;
                                                            if(_loc17_ || Boolean(_loc2_))
                                                            {
                                                               continue loop9;
                                                            }
                                                         }
                                                         §§goto(addr408);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr417);
                                       }
                                       addr432:
                                    }
                                 }
                                 else
                                 {
                                    _loc14_ = _loc2_.getToppingRealName(_loc6_.sides[_loc7_][0]);
                                    while(true)
                                    {
                                       if(_loc10_.indexOf(_loc14_) == -1)
                                       {
                                          _loc10_.push(_loc14_);
                                          if(_loc17_ || Boolean(_loc3_))
                                          {
                                          }
                                          §§goto(addr417);
                                       }
                                       _loc7_++;
                                       if(_loc18_)
                                       {
                                          break;
                                       }
                                       continue loop17;
                                       _loc14_ = _loc2_.getToppingRealName(_loc6_.sides[_loc7_][0]);
                                    }
                                    addr200:
                                 }
                                 while(true)
                                 {
                                    _loc7_++;
                                    if(_loc17_ || Boolean(_loc3_))
                                    {
                                       §§goto(addr294);
                                    }
                                    §§goto(addr408);
                                 }
                                 addr286:
                              }
                              break loop0;
                           }
                           break;
                        }
                        while(true)
                        {
                           §§push(_loc10_.length - 1);
                           if(_loc17_)
                           {
                              §§push(§§pop() == §§pop());
                              if(_loc17_ || Boolean(_loc2_))
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc18_ && Boolean(_loc2_)))
                                    {
                                       §§pop();
                                       if(_loc17_)
                                       {
                                          §§push(_loc16_);
                                          if(!_loc18_)
                                          {
                                             §§push(0);
                                             if(!(_loc18_ && Boolean(this)))
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc17_ || Boolean(_loc2_))
                                                {
                                                }
                                             }
                                             addr381:
                                             if(§§pop() == §§pop())
                                             {
                                                §§goto(addr382);
                                             }
                                             else
                                             {
                                                §§push(_loc16_);
                                                if(_loc17_ || Boolean(_loc3_))
                                                {
                                                }
                                             }
                                             §§goto(addr433);
                                          }
                                          §§push(_loc10_.length - 1);
                                       }
                                       §§goto(addr408);
                                    }
                                 }
                                 addr359:
                                 if(§§pop())
                                 {
                                    §§push(_loc4_);
                                    while(true)
                                    {
                                       §§push(" and " + _loc10_[_loc16_]);
                                       if(!(_loc18_ && Boolean(_loc3_)))
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc17_)
                                             {
                                                addr376:
                                                while(true)
                                                {
                                                   _loc4_ = §§pop();
                                                   §§goto(addr417);
                                                }
                                                addr376:
                                             }
                                             §§goto(addr416);
                                          }
                                          addr373:
                                       }
                                       else
                                       {
                                          §§goto(addr414);
                                       }
                                       §§goto(addr415);
                                    }
                                    addr361:
                                 }
                                 else
                                 {
                                    §§goto(addr381);
                                    §§push(_loc16_);
                                    §§push(0);
                                 }
                                 §§goto(addr382);
                              }
                              §§goto(addr359);
                              §§push(!§§pop());
                           }
                           if(§§pop() < §§pop())
                           {
                              §§goto(addr408);
                           }
                           §§goto(addr417);
                        }
                     }
                     addr311:
                     §§goto(addr432);
                  }
                  addr299:
                  §§push("");
                  if(!_loc18_)
                  {
                     addr302:
                     _loc4_ = §§pop();
                     if(_loc10_.length > 0)
                     {
                        addr307:
                        _loc16_ = 0;
                        if(!_loc18_)
                        {
                           §§goto(addr311);
                        }
                        §§goto(addr408);
                     }
                  }
                  §§goto(addr376);
               }
               else
               {
                  _loc11_ = _loc2_.getToppingRealName(_loc6_.wings[_loc7_][3]);
                  §§push(_loc11_);
                  if(!(_loc18_ && Boolean(_loc2_)))
                  {
                     §§push(§§pop().substr(0,_loc11_.length - 5));
                     if(_loc17_ || Boolean(this))
                     {
                        _loc11_ = §§pop();
                        if(!(_loc18_ && Boolean(param1)))
                        {
                           §§push(_loc2_.getToppingRealName(_loc6_.wings[_loc7_][0]));
                           if(_loc17_)
                           {
                              §§push(§§pop());
                              if(!_loc18_)
                              {
                                 _loc12_ = §§pop();
                                 if(!(_loc18_ && Boolean(_loc3_)))
                                 {
                                    §§push(_loc11_);
                                 }
                                 else
                                 {
                                    §§goto(addr200);
                                 }
                                 §§goto(addr286);
                              }
                              §§push("");
                              if(_loc17_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc17_ || Boolean(param1))
                                 {
                                    §§push(§§pop() + _loc12_);
                                    if(!_loc18_)
                                    {
                                       _loc13_ = §§pop();
                                       if(!(_loc18_ && Boolean(param1)))
                                       {
                                          if(_loc10_.indexOf(_loc13_) == -1)
                                          {
                                             if(!(_loc18_ && Boolean(param1)))
                                             {
                                                _loc10_.push(_loc13_);
                                             }
                                             else
                                             {
                                                §§goto(addr311);
                                             }
                                             §§goto(addr432);
                                          }
                                          _loc7_++;
                                          if(!_loc18_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr417);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(_loc10_.indexOf(_loc15_) == -1)
                                             {
                                                _loc10_.push(_loc15_);
                                             }
                                             §§goto(addr286);
                                          }
                                          addr278:
                                       }
                                       §§goto(addr408);
                                    }
                                    §§goto(addr302);
                                 }
                                 §§goto(addr376);
                              }
                              §§goto(addr373);
                           }
                           §§goto(addr437);
                        }
                        §§goto(addr307);
                     }
                  }
                  while(true)
                  {
                     _loc15_ = §§pop();
                     if(!(_loc18_ && Boolean(param1)))
                     {
                        §§goto(addr278);
                     }
                  }
                  addr270:
               }
               addr437:
               return §§pop();
               §§push(_loc4_);
            }
            break;
         }
         while(true)
         {
            if(§§pop() < §§pop().length)
            {
               §§push(_loc2_.getToppingRealName(_loc6_.dips[_loc7_][0]));
               if(_loc17_ || Boolean(this))
               {
                  §§push(§§pop());
                  if(!(_loc18_ && Boolean(param1)))
                  {
                     §§goto(addr270);
                  }
               }
               break;
            }
            §§goto(addr299);
            §§goto(addr416);
         }
         §§goto(addr361);
      }
      
      public function isCloser(param1:Number) : Boolean
      {
         var _loc2_:CustomerData = this;
         var _loc3_:CustomerDataFile = _loc2_.customerDataFiles[param1];
         return _loc3_.isCloser;
      }
      
      public function customersHaveTopping(param1:*, param2:String) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Array = null;
         var _loc6_:int = 0;
         var _loc7_:Array = null;
         var _loc8_:* = 0;
         var _loc3_:CustomerData = this;
         var _loc5_:Boolean = false;
         if(_loc10_ || Boolean(param2))
         {
            §§push(param1 is Number);
            if(!(_loc9_ && param1))
            {
               if(§§pop())
               {
                  if(!(_loc9_ && Boolean(param2)))
                  {
                     §§push([param1]);
                     if(!_loc9_)
                     {
                        _loc4_ = §§pop();
                        if(_loc10_)
                        {
                        }
                        §§goto(addr89);
                     }
                     else
                     {
                        addr79:
                        _loc4_ = §§pop();
                     }
                  }
                  §§goto(addr81);
               }
               else
               {
                  §§push(param1 is Array);
               }
            }
            if(!§§pop())
            {
               §§goto(addr79);
               §§push([]);
            }
            §§goto(addr81);
         }
         _loc4_ = param1;
         addr81:
         if(_loc4_.length > 0)
         {
            if(_loc10_)
            {
               _loc6_ = 0;
            }
            §§goto(addr89);
         }
         addr89:
         loop0:
         while(_loc6_ < _loc4_.length)
         {
            _loc7_ = _loc3_.getCustomerOrder(_loc4_[_loc6_]);
            if(_loc10_ || Boolean(param2))
            {
               §§push(0);
               if(!_loc9_)
               {
                  _loc8_ = §§pop();
               }
               while(true)
               {
                  if(§§pop() >= _loc7_.length)
                  {
                     if(_loc10_ || Boolean(this))
                     {
                        break;
                     }
                     continue loop0;
                  }
                  if(_loc7_[_loc8_][0] == param2)
                  {
                     _loc5_ = true;
                     break;
                  }
                  _loc8_++;
               }
               _loc6_++;
               continue;
               addr123:
            }
            while(true)
            {
               §§goto(addr123);
            }
         }
         return _loc5_;
      }
      
      public function getCustomerWithTopping(param1:String, param2:Array) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:Array = null;
         var _loc7_:* = 0;
         var _loc3_:CustomerData = this;
         var _loc4_:* = -1;
         var _loc5_:int = 0;
         for(; _loc5_ < param2.length; _loc5_++)
         {
            _loc6_ = _loc3_.getCustomerOrder(param2[_loc5_]);
            §§push(0);
            if(!(_loc8_ && Boolean(_loc3_)))
            {
               _loc7_ = §§pop();
               if(_loc9_)
               {
                  while(true)
                  {
                     §§push(_loc7_);
                     _loc7_++;
                  }
               }
               §§goto(addr63);
            }
            while(§§pop() < _loc6_.length)
            {
               if(_loc6_[_loc7_][0] != param1)
               {
                  _loc7_++;
                  continue;
               }
               §§goto(addr63);
            }
            §§goto(addr81);
         }
         addr63:
         §§push(Number(param2[_loc5_]));
         if(_loc9_ || Boolean(param1))
         {
            _loc4_ = §§pop();
            addr81:
            §§push(_loc4_);
            if(_loc9_ || Boolean(_loc3_))
            {
               if(§§pop() > -1)
               {
                  break loop0;
               }
               continue loop0;
            }
         }
         _loc4_;
         return §§pop();
      }
      
      public function randomize(param1:Boolean = true) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:CustomerData = this;
         if(!(_loc4_ && _loc3_))
         {
            if(param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  §§push(_loc2_);
                  §§push(_loc2_.randomSeed);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(16807);
                     if(_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc4_ && Boolean(this)))
                        {
                           §§push(2147483647);
                        }
                     }
                     §§push(§§pop() % §§pop());
                  }
                  §§push(§§pop().randomSeed = §§pop());
                  if(_loc5_)
                  {
                     §§push(§§pop() / 2147483647);
                     if(!_loc4_)
                     {
                        return §§pop() + 2.33e-10;
                     }
                  }
               }
            }
         }
         return Math.random();
      }
      
      public function setRandomSeed(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:CustomerData = this;
         if(!_loc4_)
         {
            _loc2_.randomSeed = param1;
         }
      }
   }
}

