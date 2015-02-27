#include <macro.h>

if(__GETC__(life_adminlevel) == 0) exitWith {closeDialog 0;};

private["_target"];
_target = lbData[2902, lbCurSel (2902)];
_target = call compile format["%1", _target];
if(isNil "_target") exitwith {};
if(isNull _target) exitWith {};
if(_target == player) exitWith {hint "Jaja porte dich halt selbst";};

_target setPos (getPos player);
hint format["Vous avez téléporté %1 à vous.", _target getVariable["realname",name _target]];

[format[
	"[ADMIN] %1 (%2) hat %3 (%4) zu sich geportet",
	getPlayerUID player,
	player getVariable["realname",name player],
	getPlayerUID _unit,
	_unit getVariable["realname",name _unit]
], "TON_fnc_logit", false, false] spawn life_fnc_MP;