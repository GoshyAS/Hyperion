/*
	File: empVehicles.sqf
*/
private["_index","_vehicle"];
disableSerialization;
if(!isNull (findDisplay 3494)) then {
	if(nn_empInUse) exitWith { hint "L'EMP est deja declanche sur un vehicule ou la batterie doit se charger de nouveau"; };
	nn_empInUse = true;
	_index = lbCurSel (2902);
	_vehicle = nn_last_vehicles select _index;
	if(isNull _vehicle) exitWith {};
	(vehicle player) say3D "empacsound";
	[[_vehicle], "life_fnc_vehicleEmpd",crew _vehicle,false] spawn life_fnc_MP;
	sleep (5 * 60);
	nn_empInUse = false;
};