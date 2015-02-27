#include <macro.h>

if(__GETC__(life_adminlevel) == 0) exitWith {closeDialog 0;};

[] spawn {
  while {dialog} do {
   closeDialog 0;
   sleep 0.01;
  };
};

tele = {
	_pos = [_this select 0, _this select 1, _this select 2];
	(vehicle player) setpos [_pos select 0, _pos select 1, 0];
	onMapSingleClick "";
	openMap [false, false];
};

openMap [true, false];
onMapSingleClick "[_pos select 0, _pos select 1, _pos select 2] call tele";

[format[
	"[ADMIN] %1 (%2) benutzt einen MAP-Port",
	getPlayerUID player,
	player getVariable["realname",name player]
], "TON_fnc_logit", false, false] spawn life_fnc_MP;