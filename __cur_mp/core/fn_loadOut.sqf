#include <macro.h>
/*

	File: fn_updateClothes.sqf
	Author: Percroy Hypérion
	Date: 08/02/2015

	Description: Tentative de débugage des spawn flics en Miller
	Copyright: 2015-2016 © Tout droits réservé Hyperion Gaming
*/

_uniform = uniform player;
_backpack = backpack player;
// WEST PART
if (playerSide == west) then {
	_coplevel = (__GETC__(life_coplevel));
// Switch texture only if cop is wearing a specific uniform!
	if ( (_coplevel > 0) && (uniform player == "U_Rangemaster") ) then {
		player setObjectTextureGlobal [0, "textures\COP\Uniform\rekrut.jpg"]; // this is for all cops whitelisted or public.
	};

	if ((_coplevel > 0) && (uniform player == "U_B_CTRG_1") ) then {
		player setObjectTextureGlobal [0, "textures\COP\Uniform\polizei_uniform.jpg"]; // this is for all cops whitelisted or public.
	};

	if ((_coplevel > 0) && (uniform player == "U_B_CTRG_2") ) then {
		player setObjectTextureGlobal [0, "textures\COP\Uniform\polizei2.jpg"]; // this is for all cops whitelisted or public.
	};

	if ((_coplevel > 6) && (uniform player == "U_B_CombatUniform_mcam_worn") ) then {
		player setObjectTextureGlobal [0, "textures\COP\Uniform\sek.jpg"]; // this is for all whitelisted cops above the rank of 2 on the database (these numbers can be adjusted as needed)
	};

	if ((_coplevel > 3) && (uniform player == "U_B_CombatUniform_mcam") ) then {
		player setObjectTextureGlobal [0, "textures\COP\Uniform\gsg9.jpg"]; // this is for all whitelisted cops above the rank of 2 on the database (these numbers can be adjusted as needed)
	};

	if ((_coplevel> 0) && (Backpack player != "") ) then {
		(unitbackpack player) setObjectTextureGlobal [0, ""]; // this is for all whitelisted cops above the rank of 2 on the database (these numbers can be adjusted as needed)
	};
};