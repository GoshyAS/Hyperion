#include <macro.h>
private["_unit"];

_unit = lbData[2902,lbCurSel (2902)];
_unit = call compile format["%1", _unit];

if(isNil "_unit") exitwith {};
if(isNull _unit) exitWith {};

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0;};

hint format ["Vous avez exclus %1 du jeu !", _unit getVariable["realname",name _unit]];

[format[
	"[ADMIN] %1 (%2) hat %3 (%4) expulsé du jeu",
	getPlayerUID player,
	player getVariable["realname",name player],
	getPlayerUID _unit,
	_unit getVariable["realname",name _unit]
], "TON_fnc_logit", false, false] spawn life_fnc_MP;

[[],"life_fnc_adminKickAction",_unit,false] spawn life_fnc_MP;