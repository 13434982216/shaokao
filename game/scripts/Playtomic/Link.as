package Playtomic
{
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public final class Link
   {
      private static var Clicks:Array;
      
      var _loc1_:Boolean = true;
      var _loc2_:Boolean = false;
      if(_loc1_)
      {
         Clicks = new Array();
      }
      
      public function Link()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      public static function Open(param1:String, param2:String, param3:String, param4:Boolean = false, param5:String = "_blank") : Boolean
      {
         var url:String;
         var name:String;
         var group:String;
         var trackonly:Boolean;
         var target:String;
         var unique:int;
         var bunique:int;
         var total:int;
         var btotal:int;
         var fail:int;
         var bfail:int;
         var key:String;
         var result:Boolean;
         var baseurl:String;
         var baseurlname:String;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(§§newactivation());
         §§push(false);
         if(_loc9_ || Link)
         {
            §§pop().§§slot[13] = §§pop();
            §§push(§§newactivation());
            if(!(_loc8_ && Boolean(param1)))
            {
               §§pop().§§slot[1] = param1;
               §§push(§§newactivation());
               §§push(param2);
               if(!_loc8_)
               {
                  §§pop().§§slot[2] = §§pop();
                  if(_loc9_)
                  {
                     §§push(§§newactivation());
                     if(_loc9_)
                     {
                        §§pop().§§slot[3] = param3;
                        if(_loc9_)
                        {
                           §§push(§§newactivation());
                           §§push(param4);
                           if(!_loc8_)
                           {
                              §§pop().§§slot[4] = §§pop();
                              if(!_loc8_)
                              {
                                 §§push(§§newactivation());
                                 §§push(param5);
                                 if(!_loc8_)
                                 {
                                    §§pop().§§slot[5] = §§pop();
                                    §§push(§§newactivation());
                                    §§push(0);
                                    if(_loc9_ || Boolean(param2))
                                    {
                                       §§pop().§§slot[6] = §§pop();
                                       addr327:
                                       if(!(_loc8_ && Boolean(param3)))
                                       {
                                          §§push(§§newactivation());
                                          §§push(0);
                                       }
                                       §§push(§§newactivation());
                                       if(_loc8_)
                                       {
                                       }
                                       §§pop().§§slot[6] = 1;
                                       §§push(Clicks);
                                       if(!_loc8_)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc9_ || Link)
                                          {
                                             addr533:
                                             §§push(§§pop().§§slot[12]);
                                             if(!_loc8_)
                                             {
                                                §§pop().push(§§pop());
                                                addr489:
                                                §§push(Clicks);
                                                if(!(_loc8_ && Link))
                                                {
                                                   addr497:
                                                   §§push(§§newactivation());
                                                   if(!(_loc8_ && Boolean(param3)))
                                                   {
                                                      addr505:
                                                      §§push(§§pop().§§slot[15]);
                                                      if(!(_loc8_ && Link))
                                                      {
                                                         addr513:
                                                         if(§§pop().indexOf(§§pop()) > -1)
                                                         {
                                                            addr516:
                                                            §§push(§§newactivation());
                                                            if(!_loc8_)
                                                            {
                                                               addr520:
                                                               §§pop().§§slot[9] = 1;
                                                               addr536:
                                                               §§push(§§newactivation());
                                                               §§push(true);
                                                               addr519:
                                                               addr521:
                                                            }
                                                            else
                                                            {
                                                               addr529:
                                                               §§pop().§§slot[7] = 1;
                                                               addr528:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(§§newactivation());
                                                            §§push(1);
                                                            if(_loc9_)
                                                            {
                                                               §§pop().§§slot[9] = §§pop();
                                                               §§goto(addr528);
                                                               §§push(§§newactivation());
                                                            }
                                                            §§goto(addr529);
                                                         }
                                                         addr540:
                                                         err = §§pop();
                                                         if(_loc9_)
                                                         {
                                                            §§push(§§newactivation());
                                                            if(_loc9_ || Boolean(param2))
                                                            {
                                                               §§push(1);
                                                               if(!_loc8_)
                                                               {
                                                                  §§pop().§§slot[10] = §§pop();
                                                                  if(!(_loc8_ && Boolean(param2)))
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§push(1);
                                                                     }
                                                                  }
                                                               }
                                                               §§pop().§§slot[11] = §§pop();
                                                               if(_loc9_ || Boolean(param2))
                                                               {
                                                               }
                                                               addr589:
                                                               Log.Link(baseurl,baseurlname.toLowerCase(),"DomainTotals",bunique,btotal,bfail);
                                                               if(_loc9_)
                                                               {
                                                                  Log.Link(url,name,group,unique,total,fail);
                                                                  if(_loc9_)
                                                                  {
                                                                  }
                                                                  §§goto(addr630);
                                                               }
                                                               Log.ForceSend();
                                                               addr630:
                                                               return result;
                                                               addr587:
                                                            }
                                                            addr585:
                                                            §§pop().§§slot[13] = false;
                                                            §§goto(addr587);
                                                         }
                                                         §§goto(addr585);
                                                         §§push(§§newactivation());
                                                      }
                                                   }
                                                }
                                             }
                                             §§pop().push(§§pop());
                                             if(_loc9_)
                                             {
                                                §§goto(addr536);
                                             }
                                             §§goto(addr589);
                                          }
                                          addr532:
                                          §§goto(addr533);
                                          §§push(§§pop().§§slot[15]);
                                       }
                                       §§goto(addr532);
                                       §§push(§§newactivation());
                                    }
                                    §§pop().§§slot[7] = §§pop();
                                    if(_loc9_ || Boolean(param1))
                                    {
                                       §§push(§§newactivation());
                                       if(!(_loc8_ && Boolean(param1)))
                                       {
                                          §§pop().§§slot[8] = 0;
                                          if(_loc9_)
                                          {
                                             btotal = 0;
                                             if(_loc9_)
                                             {
                                                §§push(§§newactivation());
                                                §§push(0);
                                                if(!_loc8_)
                                                {
                                                   §§pop().§§slot[10] = §§pop();
                                                   bfail = 0;
                                                   §§push(§§newactivation());
                                                   §§push(url + ".");
                                                   if(_loc9_ || Boolean(param3))
                                                   {
                                                      §§push(§§pop() + name);
                                                      if(_loc8_ && Boolean(param3))
                                                      {
                                                      }
                                                      addr288:
                                                      §§pop().§§slot[14] = §§pop() + "/";
                                                      addr286:
                                                      if(_loc9_)
                                                      {
                                                         §§push(§§newactivation());
                                                         §§push(§§newactivation());
                                                         if(_loc9_ || Boolean(param3))
                                                         {
                                                            §§push(§§pop().§§slot[14]);
                                                            if(_loc9_ || Boolean(param1))
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc9_)
                                                               {
                                                                  addr318:
                                                                  §§pop().§§slot[15] = §§pop();
                                                                  §§push(baseurlname);
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr323:
                                                                     if(§§pop().indexOf("//") > -1)
                                                                     {
                                                                        §§goto(addr327);
                                                                     }
                                                                  }
                                                                  addr385:
                                                                  addr386:
                                                                  if(§§pop().indexOf("/") > -1)
                                                                  {
                                                                  }
                                                                  try
                                                                  {
                                                                     addr409:
                                                                     if(!trackonly)
                                                                     {
                                                                        if(_loc9_ || Boolean(param2))
                                                                        {
                                                                           addr419:
                                                                           navigateToURL(new URLRequest(url),target);
                                                                           if(_loc9_)
                                                                           {
                                                                           }
                                                                        }
                                                                     }
                                                                     §§push(Clicks);
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(_loc9_)
                                                                        {
                                                                           §§push(§§pop().§§slot[12]);
                                                                           if(_loc9_)
                                                                           {
                                                                              if(§§pop().indexOf(§§pop()) > -1)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(!(_loc8_ && Boolean(param2)))
                                                                                 {
                                                                                    §§push(1);
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       §§pop().§§slot[8] = §§pop();
                                                                                       if(_loc8_ && Boolean(param3))
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr489);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 total = 1;
                                                                              }
                                                                              §§goto(addr519);
                                                                           }
                                                                           §§goto(addr513);
                                                                        }
                                                                        §§goto(addr505);
                                                                     }
                                                                     §§goto(addr497);
                                                                  }
                                                                  catch(err:Error)
                                                                  {
                                                                     §§goto(addr540);
                                                                  }
                                                                  §§goto(addr589);
                                                               }
                                                               addr362:
                                                               §§push(§§pop().replace("www.",""));
                                                               if(!_loc8_)
                                                               {
                                                                  §§pop().§§slot[15] = §§pop();
                                                                  if(_loc9_ || Boolean(param2))
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(_loc9_ || Boolean(param3))
                                                                     {
                                                                        §§goto(addr385);
                                                                        §§push(§§pop().§§slot[15]);
                                                                     }
                                                                     §§goto(addr536);
                                                                  }
                                                               }
                                                            }
                                                            addr408:
                                                            §§pop().§§slot[15] = §§pop().substring(0,baseurlname.indexOf("/"));
                                                            addr401:
                                                            §§goto(addr409);
                                                         }
                                                         addr338:
                                                         §§push(§§pop().§§slot[15]);
                                                         if(_loc9_)
                                                         {
                                                            addr349:
                                                            §§pop().§§slot[15] = §§pop().substring(baseurlname.indexOf("//") + 2);
                                                         }
                                                         §§goto(addr401);
                                                      }
                                                      §§goto(addr533);
                                                   }
                                                   §§pop().§§slot[12] = §§pop();
                                                   if(!_loc8_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!(_loc8_ && Link))
                                                      {
                                                         §§push(url);
                                                         if(!(_loc8_ && Boolean(param2)))
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc9_)
                                                            {
                                                            }
                                                            §§goto(addr318);
                                                         }
                                                      }
                                                      addr164:
                                                      §§pop().§§slot[14] = baseurl.replace("http://","");
                                                      if(_loc9_ || Boolean(param2))
                                                      {
                                                         §§push(§§newactivation());
                                                      }
                                                      §§goto(addr516);
                                                   }
                                                   §§goto(addr419);
                                                }
                                                §§goto(addr520);
                                             }
                                             §§goto(addr489);
                                          }
                                          §§push(§§newactivation());
                                          if(!(_loc8_ && Link))
                                          {
                                             §§goto(addr327);
                                          }
                                          §§goto(addr520);
                                       }
                                    }
                                    §§goto(addr521);
                                 }
                                 addr205:
                                 §§push(0);
                                 if(_loc9_)
                                 {
                                    addr257:
                                    §§push(§§newactivation());
                                    if(_loc9_ || Boolean(param1))
                                    {
                                       §§push(§§pop().§§slot[14]);
                                       if(!(_loc8_ && Boolean(param3)))
                                       {
                                          §§push("/");
                                          if(!_loc8_)
                                          {
                                             §§pop().§§slot[14] = §§pop().substring(§§pop(),§§pop().indexOf(§§pop()));
                                             addr231:
                                             §§push(baseurl);
                                             if(!_loc8_)
                                             {
                                                if(§§pop().indexOf("?") > -1)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!_loc8_)
                                                   {
                                                      §§push(baseurl);
                                                      if(_loc9_ || Boolean(param3))
                                                      {
                                                         §§push(0);
                                                         if(_loc9_)
                                                         {
                                                         }
                                                         §§goto(addr401);
                                                      }
                                                      addr269:
                                                      §§pop().§§slot[14] = §§pop();
                                                      if(_loc8_)
                                                      {
                                                      }
                                                   }
                                                   §§goto(addr327);
                                                }
                                                §§push(§§newactivation());
                                                if(!_loc8_)
                                                {
                                                   §§push("http://" + baseurl);
                                                   if(_loc9_ || Boolean(param2))
                                                   {
                                                      §§goto(addr286);
                                                   }
                                                   §§goto(addr288);
                                                }
                                             }
                                             §§goto(addr323);
                                          }
                                          §§goto(addr401);
                                       }
                                       addr265:
                                       §§goto(addr269);
                                       §§push(§§pop().substring(§§pop(),§§pop().indexOf("?")));
                                    }
                                    §§push(§§pop().§§slot[14]);
                                    if(!(_loc8_ && Link))
                                    {
                                       §§goto(addr265);
                                    }
                                    §§goto(addr401);
                                 }
                                 §§push(§§newactivation());
                                 if(!_loc8_)
                                 {
                                    §§goto(addr257);
                                 }
                                 §§goto(addr401);
                              }
                              §§push(§§newactivation());
                              if(_loc9_)
                              {
                                 addr393:
                                 §§push(baseurlname);
                                 if(_loc9_ || Boolean(param2))
                                 {
                                    §§goto(addr401);
                                 }
                                 §§goto(addr408);
                              }
                              §§goto(addr520);
                           }
                        }
                        §§goto(addr327);
                        §§push(Clicks);
                     }
                     §§push(§§newactivation());
                     if(_loc9_ || Boolean(param1))
                     {
                        §§goto(addr338);
                     }
                     addr354:
                     §§push(§§pop().§§slot[15]);
                     if(_loc9_ || Boolean(param1))
                     {
                        §§goto(addr362);
                     }
                     §§goto(addr408);
                  }
                  §§push(§§newactivation());
                  §§push(§§newactivation());
                  if(_loc9_)
                  {
                     §§goto(addr354);
                  }
                  §§goto(addr393);
               }
               §§pop().§§slot[14] = §§pop();
               §§goto(addr164);
               §§push(§§newactivation());
            }
            §§push(§§pop().§§slot[14]);
            if(!_loc8_)
            {
               §§push("/");
               if(!(_loc8_ && Link))
               {
                  if(§§pop().indexOf(§§pop()) > -1)
                  {
                     §§push(§§newactivation());
                     §§push(§§newactivation());
                     if(_loc9_)
                     {
                        §§push(§§pop().§§slot[14]);
                        if(_loc9_ || Boolean(param2))
                        {
                           §§goto(addr205);
                        }
                        §§goto(addr349);
                     }
                     §§goto(addr354);
                  }
                  §§goto(addr231);
               }
               §§goto(addr386);
            }
            §§goto(addr323);
         }
         §§pop().§§slot[13] = §§pop();
         §§goto(addr533);
      }
   }
}

