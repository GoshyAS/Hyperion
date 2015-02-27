#include <macro.h>

if(__GETC__(life_adminlevel) == 0) exitWith {closeDialog 0;};

private["_unit"];
_unit = lbData[2902,lbCurSel (2902)];
_unit = call compile format["%1", _unit];
if(isNil "_unit") exitwith {};
if(isNull _unit) exitWith {};
if(_unit == player) exitWith {hint "JA! Beobachte dich selber ... jute idee mein jung.";};

[] spawn {
  while {dialog} do {
   closeDialog 0;
   sleep 0.01;
  };
};

_unit switchCamera "INTERNAL";
hint format["Vous regardez %1\n\nAppuyez sur F10 pour quittez ce mod de vu.",_unit getVariable["realname",name _unit]];

[format[
	"[ADMIN] %1 (%2) beobachtet %3 (%4)",
	getPlayerUID player,
	player getVariable["realname",name player],
	getPlayerUID _unit,
	_unit getVariable["realname",name _unit]
], "TON_fnc_logit", false, false] spawn life_fnc_MP;

spec_exit = (findDisplay 46) displayAddEventHandler ["KeyDown","if((_this select 1) == 68) then {(findDisplay 46) displayRemoveEventHandler ['KeyDown',spec_exit];player switchCamera 'INTERNAL';hint 'Beobachten beendet.';};false"];