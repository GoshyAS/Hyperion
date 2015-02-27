#include <macro.h>

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0;};

[] spawn {
  while {dialog} do {
   closeDialog 0;
   sleep 0.01;
  };
};

player setDamage 0.99;
life_thirst = 1;
life_hunger = 1;
[] call life_fnc_hudUpdate;
[9] call SOCK_fnc_updatePartial;
[10] call SOCK_fnc_updatePartial;

// life_god = !life_god;
 
// if(life_god) then
// {
	// titleText ["GODMODE aktiviert", "PLAIN"];
	// titleFadeOut 2;

	// [format[
		// "[ADMIN] %1 (%2) hat GODMODE aktiviert",
		// getPlayerUID player,
		// player getVariable["realname",name player]
	// ], "TON_fnc_logit", false, false] spawn life_fnc_MP;
	
	// FinishedLoop = false;

	// while{life_god} do
	// {
		// player allowDamage false;
		
		// _oldVeh = vehicle player;
		// _oldVeh allowDamage false;
		// _oldVeh setFuel 1;
		// _oldVeh setDamage 0;
		
		// waitUntil { _oldVeh != (vehicle player) };
		
		// if(_oldVeh != player) then
		// {
			// _oldVeh allowDamage true;
			// _oldVeh = vehicle player;
		// };
	// };
	
	// FinishedLoop = true;
// }
// else
// {
	// if(isNil "FinishedLoop") exitWith {};
	
	// titleText ["GODMODE deaktiviert", "PLAIN"];
	// titleFadeOut 2;
	
	// waitUntil { FinishedLoop };

	// player allowDamage true;
	// vehicle player allowDamage true;
	
	// [format[
		// "[ADMIN] %1 (%2) hat GODMODE deaktiviert",
		// getPlayerUID player,
		// player getVariable["realname",name player]
	// ], "TON_fnc_logit", false, false] spawn life_fnc_MP;
// };
