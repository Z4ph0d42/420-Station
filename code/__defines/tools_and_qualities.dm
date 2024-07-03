//ported from eris
//this is only used to for tool upgrades and nothing esle
#define ABORT_CHECK						-1
#define TOOL_USE_FAIL					-1
#define TOOL_USE_CANCEL					0
#define TOOL_USE_SUCCESS				1

#define QUALITY_BOLT_TURNING			"bolt turning"
#define QUALITY_PULSING					"pulsing"
#define QUALITY_PRYING					"prying"
#define QUALITY_WELDING					"welding"
#define QUALITY_SCREW_DRIVING			"screw driving"
#define QUALITY_WIRE_CUTTING			"wire cutting"
#define QUALITY_CLAMPING				"clamping"
#define QUALITY_CAUTERIZING				"cauterizing"
#define QUALITY_RETRACTING				"retracting"
#define QUALITY_DRILLING				"drilling"
#define QUALITY_HAMMERING				"hammering"
#define QUALITY_SAWING					"sawing"
#define QUALITY_BONE_SETTING			"bone setting"
#define QUALITY_SHOVELING				"shoveling"
#define QUALITY_DIGGING					"digging"
#define QUALITY_EXCAVATION				"excavation"
#define QUALITY_CUTTING					"cutting"
#define QUALITY_LASER_CUTTING			"laser cutting"	//laser scalpels and e-swords - bloodless cutting
#define QUALITY_ADHESIVE				"adhesive"
#define QUALITY_SEALING					"sealing"

//Time for a work for tool system calculated in that way: basic time - tool level - stat check..
//It means that basic tools will give -30 on time, and people on right job should have -20 at least, or even more.
#define WORKTIME_INSTANT				0
#define WORKTIME_NEAR_INSTANT			30
#define WORKTIME_FAST					60
#define WORKTIME_NORMAL					90
#define WORKTIME_SLOW					120
#define WORKTIME_LONG					170
#define WORKTIME_EXTREMELY_LONG			250

//Fail chance for tool system calculated in that way: basic chance - tool level - stat check.
//Basic tools will give -30% on fail chance, and people on right job should have -20% at least.
#define FAILCHANCE_ZERO					0
#define FAILCHANCE_VERY_EASY			30
#define FAILCHANCE_EASY					50
#define FAILCHANCE_NORMAL				60
#define FAILCHANCE_HARD					80
#define FAILCHANCE_CHALLENGING			90
#define FAILCHANCE_VERY_HARD			120
#define FAILCHANCE_IMPOSSIBLE			150