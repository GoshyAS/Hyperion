/*
	Player clicked arrest/ok
*/

private ["_time"];

if(playerSide != west) exitWith {};
if(isNil "life_pInact_curTarget") exitWith {hint "Destination invalide."};

//Get minutes
_time = ctrlText 1400;


if(! ([_time] call TON_fnc_isnumber)) exitWith
{
	hint "Vous devriez entrer un nombre valide.";
};

_time = parseNumber _time; //requested number
_time = round _time;

if(_time < 5 || _time > 60) exitWith { hint hint "Vous ne pouvez aller en prison que entre 5 et 60 minutes maximum !"; };

closeDialog 0; 
[life_pInact_curTarget, _time] call life_fnc_arrestAction;