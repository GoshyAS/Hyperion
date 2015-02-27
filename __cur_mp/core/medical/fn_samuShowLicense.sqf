/*
File : fn_copShowLicense.sqf
Create : Black Lagoon
Edit : Deathblade
*/

private["_target", "_message","_samulevel","_rang"];

_target = cursorTarget;

if(playerSide != independent) exitWith
{
	hint "Vous n'êtes pas un membre du SAMU !";
};

if( isNull _target) then {_target = player;};

if( !(_target isKindOf "Man") ) then {_target = player;};

if( !(alive _target) ) then {_target = player;};

_samulevel = call life_medicLevel;

switch ( _samulevel ) do
{
	case 1: { _rang = "Infirmier"; };
	case 2: { _rang = "Médecin"; };
	case 3: { _rang = "Chef de service"; };
	default {_rank =  "Erreur";};
};

_message = format["<img size='10' color='#FFFFFF' image='textures\samu.png'/><br/><br/><t size='2.5'>%1</t><br/><t size='1.8'>%2</t><br/><t size='1'>SAMU d'Altis</t>", name player, _rang];

[[player, _message],"life_fnc_samuLicenseShown",_target,false] spawn life_fnc_MP;
