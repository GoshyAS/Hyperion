#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end","_donatorlevel"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if(!(str(player) in [""])) then {
	if((__GETC__(life_coplevel) < 1) && (__GETC__(life_adminlevel) == 0)) then {
		["Vous n'êtes pas policier",false,true] call BIS_fnc_endMission;
		sleep 60;
	};
	// PayCheck Donator
		switch ((call life_donator)) do
			{
				case 1: { _donatorlevel = 1000; }; //Level 1
				case 2: { _donatorlevel = 2500; }; //Level 2
				case 3: { _donatorlevel = 4000; }; //Level 3
				default { _donatorlevel = 0; }; //default for non donators they get nada!
			};

		// PayCheck Cop
		switch ((call life_coplevel)) do
			{
				case 1: { life_paycheck = ((3000) + (_donatorlevel)); }; //1re Classe
				case 2: { life_paycheck = ((3500) + (_donatorlevel)); }; //Caporal
				case 3: { life_paycheck = ((4000) + (_donatorlevel)); }; //Caporal-Chef, Sergent, Sergent-Chef
				case 4: { life_paycheck = ((4500) + (_donatorlevel)); }; //Adjudant, Adjudant-Chef
				case 5: { life_paycheck = ((5000) + (_donatorlevel)); }; //Major, Sous-Lieutenant, Lieutenant
				case 6: { life_paycheck = ((5500) + (_donatorlevel)); }; //Capitaine, Commandant
				case 7: { life_paycheck = ((8000) + (_donatorlevel)); }; //Colonel, General et Marechal
				default { life_paycheck = ((2500) + (_donatorlevel)); }; //default in-case anything goes tits up
			};
};


player setVariable["rank",(__GETC__(life_coplevel)),true];
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
//diag_log "CALLING UPDATE CLOTHES FROM: init cop";
[] call life_fnc_updateClothes;	
If (playerSide == west) Then {
 _Functions = []ExecVM "joinerUI\GroupMonitor.sqf";
 waitUntil {!IsNull Player && ScriptDone _Functions};
 Player AddEventHandler ["Respawn", {_menu = (_this select 0) addAction ["<t color=""#3399FF"">" +"Groups", "joinerUI\showJoiner.sqf"];}];
 _menu = player addAction ["<t color=""#3399FF"">" +"Groups", "joinerUI\showJoiner.sqf"];
 
};