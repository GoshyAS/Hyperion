/*
	File: fn_skyDiving.sqf
	Author: Percroy Hypérion Gaming

	Description:
	Saut en parachute pour améliorer toutes les atraction RP sur le serveur.
	© Copyright 2014-2015 tout droit réservé à Hypérion, un plainte peut être déposé en cas de vols de nos fichiers !
	Merci de demander sur notre TS pour pouvoir reprendre nos scripts: hyperion-server.ddns.net:9991
*/

if(life_hypcash < 1000) exitWith {hint "Vous n'avez pas $1000 pour effectué un saut en parachute !";};
life_hypcash = life_hypcash - 1000;
if(life_action_inUse) exitWith {};
life_action_inUse = true;
//Save these two vars.
life_skydive_backpack = backpack player;
life_skydive_backpackItems = backpackItems player;

_pos = getPosATL player; 
_pos set[2,6000]; //Calcule de la position du joueurs

cutText ["", "BLACK OUT", 5];
sleep 3;
cutText ["Vous arrivez dans la zone de largage. S'il vous plaît preparez-vous à sauter !", "BLACK FADED"];
0 cutFadeOut 999999; 
sleep 1;
//SETUP SIM OF PLANE
player setVelocity [0,0,0];
player setPos (getMarkerPos "respawn_civilian"); //Envoi les joueurs sur l'ile de départ pour pouvoir jouer le son de l'avion.
player addBackpack "B_Parachute";
0 fadeSound 0;
2 fadeSound 1;
//Now play our audio
for "_i" from 0 to 3 do
{
	playSound "airplane";
	sleep 2.2;
};
sleep 5;
player setPosATL _pos; //Reprend la position précédente du joueur
_currentView = viewDistance;
setViewDistance 6000; //Augmentation de la ViewDistance pendant la durée du saut
cutText["","PLAIN"];  

waitUntil {isTouchingGround player};
hint "Le parachute est déchiré, nous allons vous rendre votre ancien sac à dos.";
removeBackpack player;
player addBackpack life_skydive_backpack;
clearBackpackCargo player;
{
	[_x,true,true] call life_fnc_handleItem;
} foreach life_skydive_backpackItems;

setViewDistance _currentView;
life_action_inUse = false;