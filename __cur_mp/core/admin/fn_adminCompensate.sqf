#include <macro.h>

private["_value","_action"];
if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0;};

_value = parseNumber(ctrlText 9922);
if(_value < 0) exitWith {};
if(_value > 9999999) exitWith {hint "Tu ne peut pas donner plus de 9.999.999$"};

_action = [
	format ["Vous êtes actuellement sur le point de vous donner %1 Euro. Dans l'ensemble, cet argent est destiné uniquement pour rembourser des dommage subis !", [_value] call life_fnc_numberText],
	"Donner de l'argent",
	localize "STR_Global_Yes",
	localize "STR_Global_No"
] call BIS_fnc_guiMessage;

if(_action) then
{
	life_hypatmcash = life_hypatmcash + _value;
	[0] call SOCK_fnc_updatePartial;
	hint format ["Vous avez ajouté %1 à votre compte!", [_value] call life_fnc_numberText];

	[format[
		"[ADMIN] %1 (%2) a ajouté %3&euro.",
		getPlayerUID player,
		player getVariable["realname",name player],
		_value
	], "TON_fnc_logit", false, false] spawn life_fnc_MP;

	closeDialog 0;
}
else
{
	closeDialog 0;
};