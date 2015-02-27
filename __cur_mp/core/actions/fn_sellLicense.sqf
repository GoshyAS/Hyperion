/*
	File: fn_buyLicense.sqf
	
	Description:
	Called when selling a license.
*/
private["_type"];
_type = _this select 3;

_price = [_type] call life_fnc_licensePrice;
_license = [_type,0] call life_fnc_licenseType;


life_hypcash = life_hypcash + _price / 2;
titleText[format[localize "STR_NOTF_ChopSoldCar", _license select 1,[_price / 2] call life_fnc_numberText],"PLAIN"];
missionNamespace setVariable[(_license select 0),false];