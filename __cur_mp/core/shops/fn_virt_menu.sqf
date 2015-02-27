/*
	File: fn_virt_menu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initialize the virtual shop menu.
*/
private["_shop"];
_shop = _this select 3;
if(isNil {_shop}) exitWith {};
life_shop_type = _shop;
life_shop_npc = _this select 0;
if(_shop == "cop" && playerSide != west) exitWith {hint localize "STR_NOTF_NotACop"};
if(_shop == "med" && playerSide != independent) exitWith {hint localize "STR_Shop_NotaMedic"};
if(_shop == "reb" && playerSide != civilian && !license_civ_rebel ) exitWith {hint localize "STR_Shop_NotaReb"};
createDialog "shops_menu";

[] call life_fnc_virt_update;