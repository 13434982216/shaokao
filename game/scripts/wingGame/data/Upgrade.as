package wingGame.data
{
   public class Upgrade
   {
      public var tag:String;
      
      public var title:String;
      
      public var price:Number;
      
      public var effect:String;
      
      public var description:String;
      
      public var waitingOffset:Number = 0;
      
      public var inLobby:Boolean = false;
      
      public var lobbyClipName:String = null;
      
      public var index:Number = -1;
      
      public function Upgrade(param1:String, param2:String, param3:Number, param4:String, param5:String, param6:Number = 0, param7:Boolean = false, param8:String = null)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_ || Boolean(param3))
         {
            super();
            this.tag = param1;
            if(_loc10_ || Boolean(param3))
            {
               this.title = param2;
               this.price = param3;
               this.effect = param4;
               if(_loc9_)
               {
               }
               §§goto(addr61);
            }
         }
         this.description = param5;
         addr61:
         this.waitingOffset = param6;
         this.inLobby = param7;
         this.lobbyClipName = param8;
      }
   }
}

