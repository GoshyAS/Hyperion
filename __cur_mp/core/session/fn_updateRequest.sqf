/*
	Author: Tonic
*/
private["_packet","_array","_flag","_vehicle","_trunk"];
_packet = [getPlayerUID player,(profileName),playerSide,life_hypcash,life_hypatmcash];
_array = [];
_flag = switch(playerSide) do {case west: {"cop"}; case civilian: {"civ"}; case independent: {"med"};};
{
	if(_x select 1 == _flag) then
	{
		_array pushBack [_x select 0,(missionNamespace getVariable (_x select 0))];
	};
} foreach life_licenses;
_packet pushBack _array;

[] call life_fnc_saveGear;
_packet pushBack life_gear;
switch (playerSide) do {
	case civilian: {
		_packet pushBack life_is_arrested;
	};
};

[_packet,"DB_fnc_updateRequest",false,false] spawn life_fnc_MP;

/*
	Author of this part: torsten 'Demon' ennenbach
*/
// for cops or medics we dont want to store positions. Reason: balance
//if (playerSide == civilian) then {
	//diag_log format["current life vehicles: %1 ", life_vehicles];
	{
		_vehicle = _x;
		if (_vehicle isKindOf "House_F" ) then {
			// do nothing
		} else {
			//diag_log format["ROW = %1", _x];
			//diag_log format["VEHICLE OBJECT= %1", _vehicle];
			if (_vehicle isKindOf "House_F") then {};
			_position = getPos _vehicle;
			_trunk = _vehicle getVariable ["Trunk",[]];
			_inventory = getWeaponCargo _vehicle;

			//diag_log format["Vehicle ARMA INVENTORY: %1", _inventory];

			//diag_log format["VEHICLE trunk= %1", _trunk];

			[[player, _vehicle, _position, _trunk, _flag],"TON_fnc_vehicleSave",false,false] spawn life_fnc_MP;
		};

	} foreach life_vehicles;

//}