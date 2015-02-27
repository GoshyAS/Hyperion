/*
	File: fn_packupBarriere.sqf
	Author: Bryan "Tonic" Boardwine
	Description:
	Packs up a deployed barriere.
*/
if ((vehicle player) != player) exitWith { hint "Impossible d'effectuer cette action depuis le véhicule." };
private["_barrieres"];
_barrieres = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0;
if(isNil "_barrieres") exitWith {};

if(([true,"barriere",1] call life_fnc_handleInv)) then
{
	titleText["Tu as ramassé la barrière.","PLAIN"];
	player removeAction life_action_barrierePickup;
	life_action_barrierePickup = nil;
	deleteVehicle _barrieres;
};
