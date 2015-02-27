/*
	Author: Percroy Hypérion Gaming
	Description: Modifi le ratio pour le KPM.
*/
if((damage player) < 0.20) exitWith {};
if(!("FirstAidKit" in (items player))) exitWith {};
player removeItem "FirstAidKit";
player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
sleep 3;