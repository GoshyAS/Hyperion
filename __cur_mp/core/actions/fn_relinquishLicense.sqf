/*
	File: fn_buyLicense.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Called when purchasing a license. May need to be revised.
*/
private["_type", "_action"];
_type = _this select 3;

if( _type == "rebel") then
{
	_action = [
		"Et tu sur de vouloi abandonner ton entrainement rebellte?",
		"Abandonner l'entrainement rebel?",
		"Abandonner",
		"Annuler"
	] call BIS_fnc_guiMessage;
	
	if (_action) then
	{
		[21] call life_fnc_removeLicenses;
	};

};

//player setVariable["IsRebel", license_civ_rebel,true];