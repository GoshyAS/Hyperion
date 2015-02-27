#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
	/*
		_ret set[count _ret,["U_O_Wetsuit","Combinaison Plongee Camouflage",0]];
		_ret set[count _ret,["U_IG_Guerilla2_1","Uniforme de 1ere Classe",0]];
		if((call life_coplevel) > 1) then
		{
			_ret set[count _ret,["U_OrestesBody","Tenue Civil Infiltration",0]];
		};

		if((call life_coplevel) > 2) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam_tshirt","Uniforme des Troupes",0]];
		};

		if((call life_coplevel) > 3) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam","Uniforme Hautes Troupes",0]];
			_ret set[count _ret,["gign_uniform","Uniforme GIGN",0]];
		};

		if((call life_coplevel) > 4) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam_vest","Uniforme Sous Officiers",0]];
			_ret set[count _ret,["U_B_GhillieSuit","Uniforme Camouflage",0]];
		};

		if((call life_coplevel) > 5) then
		{
			_ret set[count _ret,["U_B_CTRG_2","Uniforme Officiers",0]];
			_ret set[count _ret,["U_B_CTRG_1","Uniforme Sous Officiers",0]];
			_ret set[count _ret,["U_B_CTRG_3","Uniforme Sous Officiers",0]];
			_ret set[count _ret,["U_B_HeliPilotCoveralls","Uniforme Pilote",0]];
		};

		if((call life_coplevel) > 6) then
		{
			_ret set[count _ret,["U_B_survival_uniform","Uniforme de Survie",0]];
			_ret set[count _ret,["U_I_G_Story_Protagonist_F","Uniforme Haut Commandement",0]];
		};
	*/
		
		_ret set[count _ret,["U_C_HunterBody_grn","Tenue Civil Infiltration",0]];
		_ret set[count _ret,["U_NikosAgedBody","Tenue Civil Infiltration",0]];
		_ret set[count _ret,["U_OrestesBody","Tenue Civil Infiltration",0]];
		_ret set[count _ret,["U_O_Wetsuit","Combinaison Plongee Camouflage",0]];
		_ret set[count _ret,["U_Rangemaster","Uniforme de 1er Classe",0]];
		_ret set[count _ret,["U_B_CTRG_1","Uniforme de Sous-Officier",0]];
		_ret set[count _ret,["U_B_CTRG_2","Uniforme d'Officier",0]];
		_ret set[count _ret,["U_B_CombatUniform_mcam_worn","Uniforme de Supérieur",0]];
		_ret set[count _ret,["U_B_CombatUniform_mcam","Intervention",0]];
	};

	//Hats
	case 1:
	{
		if((call life_coplevel) > 1) then
		{
        	_ret set[count _ret,["H_Cap_blk","Casquette 1ere Classe",0]];
        };

		if((call life_coplevel) > 2) then
		{
			_ret set[count _ret,["H_Booniehat_mcamo","Bob Camo",0]];
			_ret set[count _ret,["H_HelmetB_plain_mcamo","Casque d'intervention",0]];
		};

		if((call life_coplevel) > 3) then
		{
			_ret set[count _ret,["H_Watchcap_khk","Bonnet",0]];
			_ret set[count _ret,["gign_helm4",nil,0]];
			_ret set[count _ret,["gign_helm3",nil,0]];
			_ret set[count _ret,["gign_helm",nil,0]];
			_ret set[count _ret,["gign_Balaclava",nil,0]];
		};

		if((call life_coplevel) > 4) then
		{
			_ret set[count _ret,["H_HelmetB_desert","Casque Desert",0]];
			_ret set[count _ret,["H_HelmetB_snakeskin","Casque Snake",0]];
		};

		if((call life_coplevel) > 5) then
		{
			_ret set[count _ret,["H_HelmetB_light_desert","Casque Desert",0]];
			_ret set[count _ret,["H_HelmetB_light_snakeskin","Casque Snake",0]];
			_ret set[count _ret,["H_HelmetB_light_black","Casque Noir",0]];
			_ret set[count _ret,["H_HelmetB_light_sand","Casque Sable",0]];
			_ret set[count _ret,["H_Beret_red","Beret Simple",0]];
			_ret set[count _ret,["H_PilotHelmetHeli_O","Casque Pilote Helico",0]];
		};

		if((call life_coplevel) > 6) then
		{
			_ret set[count _ret,["H_Beret_02","Beret",0]];
		};
	};


	//Glasses
	case 2:
	{
		_ret =
		[
			["G_Balaclava_blk",nil,0],
			["G_B_Diving",nil,0],
			["G_Shades_Black",nil,0],
			["G_Shades_Blue",nil,0],
			["G_Sport_Blackred",nil,0],
			["G_Sport_Checkered",nil,0],
			["G_Sport_Blackyellow",nil,0],
			["G_Sport_BlackWhite",nil,0],
			["G_Aviator",nil,0],
			["G_Squares",nil,0],
			["G_Lowprofile",nil,0],
			["G_Combat",nil,0]
		];
	};


	//Vest
	case 3:
	{
		_ret set[count _ret,["V_RebreatherIA",nil,0]];
		_ret set[count _ret,["V_TacVest_camo",nil,0]];
		if((call life_coplevel) > 1) then
		{
			_ret set[count _ret,["V_TacVestIR_blk",nil,0]];
		};

		if((call life_coplevel) > 2) then
		{
			_ret set[count _ret,["V_PlateCarrier1_rgr",nil,0]];
		};

		if((call life_coplevel) > 3) then
		{
			_ret set[count _ret,["V_PlateCarrier3_rgr",nil,0]];
			_ret set[count _ret,["gign_HeavyVest",nil,0]];
			_ret set[count _ret,["gign_BlackVest",nil,0]];
		};

		if((call life_coplevel) > 4) then
		{
			_ret set[count _ret,["V_PlateCarrierGL_rgr",nil,0]];
		};

		if((call life_coplevel) > 5) then
		{
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,0]];
			_ret set[count _ret,["V_PlateCarrier_Kerry",nil,0]];
			_ret set[count _ret,["V_PlateCarrierH_CTRG",nil,0]];
		};

		if((call life_coplevel) > 6) then
		{
			_ret set[count _ret,["V_PlateCarrierIA2_dgtl",nil,0]];
			_ret set[count _ret,["V_PlateCarrierIAGL_dgtl",nil,0]];
		};
	};

	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_AssaultPack_cbr","Sac à dos - 20 places",6000],
			["B_Kitbag_cbr","Sac à dos - 25 places",7000],
			["B_FieldPack_cbr","Sac à dos - 30 places",8000],
			["B_Bergen_sgg","Sac à dos - 35 places",9000],
			["B_Carryall_ocamo","Sac à dos - 40 places",10000],
			["B_Carryall_oucamo","Sac à dos - 40 places",10000],
			["B_Carryall_mcamo","Sac à dos - 40 places",10000],
			["B_Carryall_cbr","Sac à dos - 40 places",10000],
			["B_UAV_01_backpack_F",nil,50000],
			["B_FieldPack_blk","Sac à Dos GIGN",10000]
		];
	};
};
_ret;