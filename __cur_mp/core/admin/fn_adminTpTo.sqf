#include <macro.h>

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0;};

private["_target"];
_target = lbData[2902, lbCurSel (2902)];
_target = call compile format["%1", _target];
if(isNil "_target") exitwith {};
if(isNull _target) exitWith {};
if(_target == player) exitWith {};

player setPos (getPos _target);
hint format["Vous vous êtes téléporté jusqu'à %1", _target getVariable["realname",name _target]];

[format[
	"[ADMIN] %1 (%2) hat sich zu %3 (%4) geportet",
	getPlayerUID player,
	player getVariable["realname",name player],
	getPlayerUID _target,
	_target getVariable["realname",name _target]
], "TON_fnc_logit", false, false] spawn life_fnc_MP;