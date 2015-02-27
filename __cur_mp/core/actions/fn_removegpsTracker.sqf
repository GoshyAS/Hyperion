/*
	File: fn_removegpsTracker.sqf
	Author: Poseidon
	
	Description: Attaches a gps tracker to selected vehicle
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit) exitWith {};
if(!(_unit isKindOf "AllVehicles")) exitWith {hint "Tu ne peux pas ajouté de tracker sur ca."};
if((player distance _unit > 7) && (playerSide != west)) exitWith {hint "Tu dois êtres plus pret!"};
closeDialog 0;

if("MineDetector" in (items player)) then {
	life_action_inUse = true;
	player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
	sleep 4;
	life_action_inUse = false;
	if(player distance _unit > 7) exitWith {titleText["Tu es trop loins!","PLAIN"];};
	if(_unit getVariable ["gpstracker",true]) then
	{
		titleText["Tu a désactivé tout les trackers GPS sur ton véhicules.","PLAIN"];
		diag_log format["GPS remove : %1",_unit];
		_unit setVariable["gpstracker",[],true];
	}else
	{
		hint "Il n'y avait pas de tracker sur la voiture";
	};
}else
{
	hint "Tu n'a pas l'outils pour désactivé les trackers";
};