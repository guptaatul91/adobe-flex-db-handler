/***********************************************
 *    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    
 *    @@@	        Developer Profile        @@@    
 *    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    
 *    @ Name 		  : Atul Kumar Gupta 	   @
 *    @ Creation Date : 7-July 2015      	   @
 *    @ Email Id 	  : guptaatul91@gmail.com  @
 * 	  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 * *********************************************/


package dbmod
{
	import flash.data.SQLConnection;
    import dbmod.DBController ;
		
	public class DBModel
	{
		private static var _dbModel:DBModel = null ;
		private var _dbController :DBController = null ;
		private var _dbConn :SQLConnection = null ;
		private var _dbFilePath :String = "" ;
		/**************
		 * Constructor 
		 *************/
		public function DBModel()
		{
			
		}
		public function set dbConn(dbConn:SQLConnection):void 
		{
			this._dbConn = dbConn ;
		}
		public function get dbConn():SQLConnection 
		{
			return this._dbConn ; 
				
		}
		
		public function set dbFilePath(dbFilePath:String): void
		{
			this._dbFilePath = dbFilePath ;
		}
		public function get dbFilePath():String
		{
			return this._dbFilePath ;
		}
		/**** DBController Instance *****/
		public function set dbController(dbController:DBController):void
		{
			this._dbController = dbController ;
		}
		
		public function get dbController():DBController
		{
			return this._dbController ;
		}
				
		/*** DBModel single instance *****/
		
		public static function getInstance():DBModel 
		{
			if(_dbModel == null)
			{
				_dbModel = new DBModel();
			}
			return _dbModel ;
		}
		
	}
}