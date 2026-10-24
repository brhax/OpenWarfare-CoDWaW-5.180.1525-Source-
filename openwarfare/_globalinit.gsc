//******************************************************************************
//  _____                  _    _             __
// |  _  |                | |  | |           / _|
// | | | |_ __   ___ _ __ | |  | | __ _ _ __| |_ __ _ _ __ ___
// | | | | '_ \ / _ \ '_ \| |/\| |/ _` | '__|  _/ _` | '__/ _ \
// \ \_/ / |_) |  __/ | | \  /\  / (_| | |  | || (_| | | |  __/
//  \___/| .__/ \___|_| |_|\/  \/ \__,_|_|  |_| \__,_|_|  \___|
//       | |               We don't make the game you play.
//       |_|                 We make the game you play BETTER.
//
//            Website: http://openwarfaremod.com/
//******************************************************************************

init()
{
	// Initialize the arrays to hold the gametype names and stock map names
	initGametypesAndMaps();

	// Do not thread these initializations
	openwarfare\_eventmanager::eventManagerInit();
	openwarfare\_maprotationcs::init();
	openwarfare\_visualmover::init();
			
	// Initialize OpenWarfare modules
	thread openwarfare\_advancedacp::init();
	thread openwarfare\_advancedmvs::init();		
	thread openwarfare\_antibunnyhopping::init();
	thread openwarfare\_anticamping::init();
	thread openwarfare\_bigbrotherbot::init();
	thread openwarfare\_binoculars::init();
	thread openwarfare\_blackscreen::init();
	thread openwarfare\_bloodsplatters::init();
	thread openwarfare\_bodyremoval::init();
	thread openwarfare\_clanvsall::init();
	thread openwarfare\_caceditor::init();
	thread openwarfare\_capeditor::init();
	thread openwarfare\_damageeffect::init();
	thread openwarfare\_daycyclesystem::init();
	thread openwarfare\_disarmexplosives::init();
	thread openwarfare\_dogtags::init();	
	thread openwarfare\_dvarmonitor::init();
	thread openwarfare\_dynamicattachments::init();
	thread openwarfare\_extendedobituaries::init();
	//thread openwarfare\_firingmode::init();		
	thread openwarfare\_fitnesscs::init();		
	thread openwarfare\_globalchat::init();
	thread openwarfare\_guidcs::init();		
	thread openwarfare\_healthsystem::init();
	thread openwarfare\_hidescores::init();
	thread openwarfare\_idlemonitor::init();
	thread openwarfare\_keybinds::init();		
	thread openwarfare\_killingspree::init();
	thread openwarfare\_limitexplosives::init();
	thread openwarfare\_livebroadcast::init();	
	thread openwarfare\_martyrdom::init();
	thread openwarfare\_numlives::init();
	thread openwarfare\_objoptions::init();
	thread openwarfare\_overtime::init();
	thread openwarfare\_owbattlechatter::init();
	thread openwarfare\_paindeathsounds::init();
	thread openwarfare\_playerdvars::init();
	thread openwarfare\_players::init();				
	thread openwarfare\_powerrank::init();
	thread openwarfare\_quickactions::init();
	thread openwarfare\_rangefinder::init();
	thread openwarfare\_realtimestats::init();
	thread openwarfare\_reservedslots::init();
	thread openwarfare\_rng::init();
	thread openwarfare\_rotateifempty::init();
	thread openwarfare\_rsmonitor::init();
	thread openwarfare\_scorebot::init();
	thread openwarfare\_scoresystem::init();
	thread openwarfare\_serverbanners::init();
	thread openwarfare\_servermessages::init();
	thread openwarfare\_sniperzoom::init();
	thread openwarfare\_spawnprotection::init();
	thread openwarfare\_speedcontrol::init();		
	thread openwarfare\_sponsors::init();
	thread openwarfare\_stationaryturrets::init();
	thread openwarfare\_teamstatus::init();
	thread openwarfare\_testbots::init();
	thread openwarfare\_thirdperson::init();
	thread openwarfare\_timeout::init();
	thread openwarfare\_timer::init();
	thread openwarfare\_tkmonitor::init();
	thread openwarfare\_virtualranks::init();
	thread openwarfare\_weapondamagemodifier::init();
	thread openwarfare\_weaponjam::init();
	thread openwarfare\_weaponlocationmodifier::init();
	thread openwarfare\_weaponrangemodifier::init();
	thread openwarfare\_weaponweightmodifier::init();
	thread openwarfare\_welcomerulesinfo::init();
}



initGametypesAndMaps()
{
	// ********************************************************************
	// WE DO NOT USE LOCALIZED STRINGS TO BE ABLE TO USE THEM IN MENU FILES
	// ********************************************************************

	// Load all the gametypes we currently support
	level.supportedGametypes = [];
	level.supportedGametypes["ass"] = "Assassination";
	level.supportedGametypes["bel"] = "Behind Enemy Lines";
	level.supportedGametypes["ch"] = "Capture and Hold";
	level.supportedGametypes["ctf"] = "Capture the Flag";
	level.supportedGametypes["dm"] = "Free for All";
	level.supportedGametypes["dom"] = "Domination";
	level.supportedGametypes["ftag"] = "Freeze Tag";
	level.supportedGametypes["gr"] = "Greed";	
	level.supportedGametypes["gg"] = "Gun Game";
	level.supportedGametypes["koth"] = "Headquarters";
	level.supportedGametypes["hns"] = "Hide And Seek";	
	level.supportedGametypes["lms"] = "Last Man Standing";
	level.supportedGametypes["lts"] = "Last Team Standing";
	level.supportedGametypes["oitc"] = "One In The Chamber";
	level.supportedGametypes["re"] = "Retrieval";	
	level.supportedGametypes["sab"] = "Sabotage";
	level.supportedGametypes["sd"] = "Search and Destroy";
	level.supportedGametypes["ss"] = "Sharp Shooter";	
	level.supportedGametypes["tdm"] = "Team Deathmatch";
	level.supportedGametypes["tgr"] = "Team Greed";	
	level.supportedGametypes["twar"] = "War";

	// Build the default list of gametypes
	level.defaultGametypeList = buildListFromArrayKeys( level.supportedGametypes, ";" );
	
	// Load the name of the stock maps
	level.stockMapNames = [];
	level.stockMapNames["mp_airfield"] = "Airfield";
	level.stockMapNames["mp_asylum"] = "Asylum";
	level.stockMapNames["mp_kwai"] = "Banzai";
	level.stockMapNames["mp_drum"] = "Battery";
	level.stockMapNames["mp_bgate"] = "Breach";
	level.stockMapNames["mp_castle"] = "Castle";
	level.stockMapNames["mp_shrine"] = "Cliffside";
	level.stockMapNames["mp_stalingrad"] = "Corrosion";	
	level.stockMapNames["mp_courtyard"] = "Courtyard";
	level.stockMapNames["mp_dome"] = "Dome";
	level.stockMapNames["mp_downfall"] = "Downfall";
	level.stockMapNames["mp_hangar"] = "Hangar";
	level.stockMapNames["mp_kneedeep"] = "Knee Deep";	
	level.stockMapNames["mp_makin"] = "Makin";
	level.stockMapNames["mp_makin_day"] = "Makin Day";
	level.stockMapNames["mp_nachtfeuer"] = "Nightfire";
	level.stockMapNames["mp_outskirts"] = "Outskirts";
	level.stockMapNames["mp_vodka"] = "Revolution";
	level.stockMapNames["mp_roundhouse"] = "Roundhouse";
	level.stockMapNames["mp_seelow"] = "Seelow";
	level.stockMapNames["mp_subway"] = "Station";
	level.stockMapNames["mp_docks"] = "Sub Pens";
	level.stockMapNames["mp_suburban"] = "Upheaval";
	
	// Build the default list of maps
	level.defaultMapList = buildListFromArrayKeys( level.stockMapNames, ";" );	
}


buildListFromArrayKeys( arrayToList, delimiter )
{
	newList = "";
	arrayKeys = getArrayKeys( arrayToList );
	
	for ( i = 0; i < arrayKeys.size; i++ ) {
		if ( newList != "" ) {
			newList += delimiter;
		}
		newList += arrayKeys[i];		
	}	

	return newList;
}