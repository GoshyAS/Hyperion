#include <macro.h>
/*
Filename: fn_insurance.sqf
Author: Kevin Webb
Description: Simple way of insuring the vehicle. Will be modified in the future.
*/
private["_nearVehicles","_vehicle","_price"];
if(vehicle player != player) then
{
_vehicle = vehicle player;
}
else
{
_nearVehicles = nearestObjects[getPos player,["Car","Air","Ship"],50];
if(count _nearVehicles > 0) then
{
{
if(!isNil "_vehicle") exitWith {}; //Kill the loop.
_vehData = _x getVariable["vehicle_info_owners",[]];
if(count _vehData  > 0) then
{
_vehOwner = (_vehData select 0) select 0;
if((getPlayerUID player) == _vehOwner) exitWith
{
_vehicle = _x;
};
};
} foreach _nearVehicles;
};
};


if(isNil "_vehicle") exitWith {hint "Assurez-vous que votre véhicule est proche du garage et essayez à nouveau.";};
if(isNull _vehicle) exitWith {};
if(_vehicle getVariable["isInsured",false]) exitWith { hint "Ce véhicule possède déjà l'assurance."; };
if(!(_vehicle in life_vehicles)) exitWith {hint "Le véhicule ciblé ne semble pas être la vôtre."; };
_price = switch(typeOf _vehicle) do
{
case "C_Kart_01_Blu_F": { 11250};
case "C_Kart_01_Fuel_F": { 11250};
case "C_Kart_01_Red_F": { 11250};
case "C_Kart_01_Vrana_F": { 11250};
case "B_Quadbike_01_F": { 3750};
case "C_Hatchback_01_F": { 11250};
case "C_Offroad_01_F": { 12750};
case "C_SUV_01_F": { 30000};
case "C_Van_01_transport_F": { 71250};
case "C_Van_01_box_F": { 75000};
case "I_G_Van_01_fuel_F": { 90000};
case "I_Truck_02_transport_F": { 93750};
case "I_Truck_02_covered_F": { 131250};
case "B_Truck_01_transport_F": { 172500};
case "B_Truck_01_box_F": { 262500};
case "B_Heli_Light_01_F": { 300000};
case "O_Heli_Transport_04_F": { 450000};
case "O_Heli_Transport_04_bench_F": { 525000};
case "O_Heli_Transport_04_repair_F": { 525000};

case "O_Truck_03_device_F": { 750000};
case "O_Heli_Light_02_unarmed_F": { 600000};
case "O_Heli_Transport_04_covered_F": { 1500000};
case "I_Heli_Transport_02_F": { 900000};
case "B_Heli_Transport_03_unarmed_F": { 900000};
case "B_MRAP_01_F": { 150000};

	default { -1};
};
if(_price == -1) exitWith { hint "Vous ne pouvez pas assurer ce type de véhicule"; };
// if(playerSide == west) then { _price = _price / 4; };
// _price = (_price * __GETC__(life_vip_discount));
if(life_hypatmcash < _price) exitWith { hint format["Vous ne disposez pas assez d'argent dans votre compte bancaire pour effectuer cette transaction, il vous faut %1 €",_price]; };
hint format["Vous avez dépensé %1€ pour assurer ce véhicule. Si il explose, il retournera dans votre garage.",_price];
life_hypatmcash = life_hypatmcash - _price;
closeDialog 0;
_vehicle setVariable["isInsured",true,true];
[_vehicle] spawn
{
	_vehicle = _this select 0;
	_dbInfo = _vehicle getVariable["dbInfo",[]];
	waitUntil {sleep 1; !alive _vehicle};
	[[_vehicle,_dbInfo],"TON_fnc_vehicleInsurance",false,false] spawn life_fnc_MP;
};