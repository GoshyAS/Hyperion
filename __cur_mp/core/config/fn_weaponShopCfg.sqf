#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration file for the weapon shops.

	Return:
	String: Close the menu
	Array:
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'êtes pas un flic !"};
			default
			{
				["Altis Cop Shop",
					[
						["hgun_P07_snds_F","Tazer",0],
						["16Rnd_9x21_Mag",nil,0],

						["Chemlight_blue",nil,100],
						["SMG_01_F",nil,10000],
						["30Rnd_45ACP_Mag_SMG_01",nil,75],
						["optic_Aco_smg",nil,500],
						["acc_flashlight",nil,100],
						["acc_pointer_IR",nil,100],

						["Binocular",nil,0],
						["NVGoggles_OPFOR",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,500],
						["Medikit",nil,0],

						["B_UAVTerminal",nil,0]
					]
				];
			};
		};
	};


	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'êtes pas un flic !"};
			case ((call life_coplevel) < 2): {"Vous n'avez pas le rang de Caporal !"};
			default
			{
				["Altis Patrol Officer Shop",
					[
						["arifle_Mk20_F",nil,20000],
						["arifle_SDAR_F",nil,25000],
						["30Rnd_556x45_Stanag",nil,100],
						["optic_Holosight",nil,500],

						["Chemlight_blue",nil,100],
						["Binocular",nil,0],
						["NVGoggles_OPFOR",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,500],
						["Medikit",nil,0]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'êtes pas un flic !"};
			case ((call life_coplevel) < 3): {"Vous n'avez pas le rang de Caporal-Chef, Sergent ou Sergent-Chef !"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["arifle_MXC_F",nil,30000],
						["muzzle_snds_H",nil,2000],

						["arifle_MXM_F",nil,30000],
						["muzzle_snds_H",nil,2000],

						["30Rnd_65x39_caseless_mag",nil,150],

						["optic_Hamr",nil,1000],
						["optic_MRCO",nil,1000],
						["optic_Arco",nil,500],
						["optic_DMS",nil,5000],
						["optic_NVS",nil,8000],



						["Chemlight_blue",nil,100],
						["Binocular",nil,0],
						["NVGoggles_OPFOR",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,500],
						["Medikit",nil,0]
					]
				];
			};
		};
	};

	case "cop_adjudant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'êtes pas un flic !"};
			case ((call life_coplevel) < 4): {"Vous n'avez pas le rang de Adjudant ou Adjudant-Chef !"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["srifle_EBR_F",nil,45000],
						["20Rnd_762x51_Mag",nil,200],
						["muzzle_snds_B",nil,1000],
						["LMG_Zafir_F",nil,60000],
						["150Rnd_762x51_Box_Tracer",nil,500],

						["optic_Hamr",nil,1000],
						["optic_MRCO",nil,1000],
						["optic_Arco",nil,500],
						["optic_DMS",nil,5000],
						["optic_NVS",nil,8000],

						["HandGrenade_Stone","FlashBang",5000],

						["Chemlight_blue",nil,100],
						["Rangefinder",nil,10000],
						["NVGoggles_OPFOR",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,500],
						["Medikit",nil,0]
					]
				];
			};
		};
	};


	case "cop_major":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'êtes pas un flic !"};
			case ((call life_coplevel) < 5): {"Vous n'avez pas le rang de Major, Sous-Lieutenant ou Lieutenant !"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["srifle_DMR_01_F",nil,45000],
						["10Rnd_762x51_Mag",nil,200],
						["muzzle_snds_B",nil,1000],

						["optic_DMS",nil,5000],
						["optic_NVS",nil,8000],
						["optic_Hamr",nil,1000],
						["optic_MRCO",nil,1000],
						["optic_Arco",nil,500],

						["LMG_Mk200_F",nil,60000],
						["muzzle_snds_H_MG",nil,2000],

						["200Rnd_65x39_cased_Box",nil,1000],
						["HandGrenade_Stone","FlashBang",5000],

						["Chemlight_blue",nil,100],
						["Rangefinder",nil,10000],
						["NVGoggles_OPFOR",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,500],
						["Medikit",nil,0],
						["DemoCharge_Remote_Mag",nil,5000]
					]
				];
			};
		};
	};

	case "cop_capitaine":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'êtes pas un flic !"};
			case ((call life_coplevel) < 6): {"Vous n'avez pas le rang de Capitaine, Commandant ou Colonel !"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["srifle_LRR_F",nil,100000],
						["srifle_LRR_camo_F",nil,100000],
						["7Rnd_408_Mag",nil,1000],
						["srifle_GM6_camo_F",nil,110000],
						["srifle_GM6_F",nil,110000],
						["5Rnd_127x108_Mag",nil,1000],

						["optic_LRPS",nil,7000],
						["optic_SOS",nil,5000],
						["optic_DMS",nil,5000],
						["optic_NVS",nil,8000],
						["optic_Hamr",nil,1000],
						["optic_MRCO",nil,1000],
						["optic_Arco",nil,500],

						["HandGrenade_Stone","FlashBang",2500],
						
						["Chemlight_blue",nil,100],
						["Rangefinder",nil,5000],
						["NVGoggles_OPFOR",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
						["Medikit",nil,0],
						["DemoCharge_Remote_Mag",nil,5000]
					]
				];
			};
		};
	};

	case "uranium":
    {
        switch(true) do
        {
            case (playerSide != civilian): {"Tu n'es pas civil!"};
            case (!license_civ_uranium): {"Tu n'as pas la formation Uranium!"};
            default
            {
                ["Objet Traitement Uranium",
                    [
                        ["ToolKit",nil,2500],
                        ["FirstAidKit",nil,250],
                        ["U_C_Scientist","Combinaison Antiradiation",50000],
                        ["H_PilotHelmetFighter_I","Casque Antiradiation",15000]
                    ]
                ];
            };
        };
    };

	case "med_basic":
	{
		switch (true) do
		{
			case (playerSide != independent): {"Vous n'êtes pas un Toubib"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["Chemlight_orange",nil,100],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};

	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas un civil !"};
			case (!license_civ_rebel): {"Vous n'avez pas la Formation de Rebelle !"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["hgun_Pistol_heavy_01_F",nil,18000],
						["11Rnd_45ACP_Mag",nil,100],
						["arifle_SDAR_F",nil,22500],
						["20Rnd_556x45_UW_mag",nil,100],
						["arifle_Katiba_F",nil,45000],
						["30Rnd_65x39_caseless_green",nil,200],
						["muzzle_snds_H",nil,1000],
						["srifle_DMR_01_F",nil,108000],
						["10Rnd_762x51_Mag",nil,200],
						["muzzle_snds_B",nil,2500],
						["srifle_EBR_F",nil,108000],
						["20Rnd_762x51_Mag",nil,350],
						["muzzle_snds_B",nil,2500],
						["LMG_Zafir_F",nil,189000],
						["150Rnd_762x51_Box",nil,500],
						["srifle_GM6_LRPS_F",nil,540000],
						["5Rnd_127x108_Mag",nil,1000],
						["srifle_GM6_camo_F",nil,540000],
						["5Rnd_127x108_Mag",nil,1000],
						["srifle_LRR_SOS_F",nil,540000],
						["7Rnd_408_Mag",nil,1000],
						["srifle_LRR_camo_F",nil,540000],

						["arifle_MXM_Black_F",nil,67500],
						["arifle_MX_F",nil,54000],
						["arifle_MX_SW_F",nil,75000],
						["30Rnd_65x39_caseless_mag",nil,200],



						["7Rnd_408_Mag",nil,1000],

						["optic_LRPS",nil,5000],
						["optic_SOS",nil,5000],
						["optic_NVS",nil,7500],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,2500],
						["optic_MRCO",nil,2500],
						["optic_DMS",nil,2500],
						["optic_ACO_grn",nil,1500],
						["NVGoggles_OPFOR",nil,1000],
						["Toolkit",nil,500],
						["FirstAidKit",nil,100],
						["Rangefinder",nil,5000],
						["Binocular",nil,100],
						["ItemGPS",nil,100],
						["ItemMap",nil,100],
						["ItemWatch",nil,100],
						["ItemCompass",nil,100]
					]
				];
			};
		};
	};

	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas un civil !"};
			case (!license_civ_gun): {"Vous n'avez pas de licence d'armes à feu !"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};

	case "gang":
 	{
 		switch(true) do
 		{
 			case (playerSide != civilian): {"Vous n'êtes pas un civil !"};
 			default
 			{
 				["Hideout Armament",
 					[
						["hgun_Pistol_heavy_01_F",nil,18000],
						["11Rnd_45ACP_Mag",nil,100],
						["arifle_SDAR_F",nil,22500],
						["20Rnd_556x45_UW_mag",nil,100],
						["arifle_Katiba_F",nil,45000],
						["30Rnd_65x39_caseless_green",nil,200],
						["muzzle_snds_H",nil,1000],
						["srifle_DMR_01_F",nil,108000],
						["10Rnd_762x51_Mag",nil,200],
						["muzzle_snds_B",nil,2500],
						["srifle_EBR_F",nil,108000],
						["20Rnd_762x51_Mag",nil,350],
						["muzzle_snds_B",nil,2500],
						["LMG_Zafir_F",nil,189000],
						["150Rnd_762x51_Box",nil,500],
						["srifle_GM6_LRPS_F",nil,540000],
						["5Rnd_127x108_Mag",nil,1000],
						["srifle_GM6_camo_F",nil,540000],
						["5Rnd_127x108_Mag",nil,1000],
						["srifle_LRR_SOS_F",nil,540000],
						["7Rnd_408_Mag",nil,1000],
						["srifle_LRR_camo_F",nil,540000],

						["arifle_MXM_Black_F",nil,67500],
						["arifle_MX_F",nil,54000],
						["arifle_MX_SW_F",nil,75000],
						["30Rnd_65x39_caseless_mag",nil,200],



						["7Rnd_408_Mag",nil,1000],

						["optic_LRPS",nil,5000],
						["optic_SOS",nil,5000],
						["optic_NVS",nil,7500],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,2500],
						["optic_MRCO",nil,2500],
						["optic_DMS",nil,2500],
						["optic_ACO_grn",nil,1500],
						["NVGoggles_OPFOR",nil,1000],
						["Toolkit",nil,500],
						["FirstAidKit",nil,100],
						["Rangefinder",nil,5000],
						["Binocular",nil,100],
						["ItemGPS",nil,100],
						["ItemMap",nil,100],
						["ItemWatch",nil,100],
						["ItemCompass",nil,100]
 					]
 				];
 			};
 		};
 	};


	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000]
			]
		];
	};

	case "donator":
	{
		switch(true) do
		{
			case ((call life_donator) == 0): {"Vous n'êtes pas donateur !"};
			case ((call life_donator) == 1):
			{
				["STS Donator Shop Tier 1",
					[
						["hgun_Pistol_heavy_01_F",nil,17000],
						["11Rnd_45ACP_Mag",nil,93],
						["arifle_SDAR_F",nil,21000],
						["20Rnd_556x45_UW_mag",nil,93],
						["arifle_Katiba_F",nil,42000],
						["30Rnd_65x39_caseless_green",nil,187],
						["arifle_MXM_Black_F",nil,63000],
						["30Rnd_65x39_caseless_mag",nil,187],
						["muzzle_snds_H",nil,935],
						["srifle_DMR_01_F",nil,101000],
						["10Rnd_762x51_Mag",nil,187],
						["muzzle_snds_B",nil,2337],
						["srifle_EBR_F",nil,101000],
						["20Rnd_762x51_Mag",nil,327],
						["muzzle_snds_B",nil,2337],
						["LMG_Zafir_F",nil,177000],
						["150Rnd_762x51_Box",nil,467],
						["srifle_GM6_LRPS_F",nil,505000],
						["5Rnd_127x108_Mag",nil,935],
						["srifle_GM6_camo_F",nil,505000],
						["5Rnd_127x108_Mag",nil,935],
						["srifle_LRR_SOS_F",nil,505000],
						["7Rnd_408_Mag",nil,935],
						["srifle_LRR_camo_F",nil,505000],
						["7Rnd_408_Mag",nil,935],

						["optic_LRPS",nil,4675],
						["optic_SOS",nil,4675],
						["optic_NVS",nil,7012],
						["optic_Arco",nil,2337],
						["optic_Hamr",nil,2337],
						["optic_MRCO",nil,2337],
						["optic_DMS",nil,2337],
						["optic_ACO_grn",nil,1402],
						["NVGoggles_OPFOR",nil,935],
						["Toolkit",nil,233],
						["FirstAidKit",nil,46],
						["Rangefinder",nil,4675],
						["Binocular",nil,93],
						["ItemGPS",nil,93],
						["ItemMap",nil,93],
						["ItemWatch",nil,93],
						["ItemCompass",nil,93]
					]
				];
			};

			case ((call life_donator) == 2):
			{
				["STS Donator Shop Tier 2",
					[
						["hgun_Pistol_heavy_01_F",nil,16200],
						["11Rnd_45ACP_Mag",nil,90],
						["arifle_SDAR_F",nil,18000],
						["20Rnd_556x45_UW_mag",nil,90],
						["arifle_Katiba_F",nil,36000],
						["30Rnd_65x39_caseless_green",nil,180],
						["arifle_MXM_Black_F",nil,54000],
						["30Rnd_65x39_caseless_mag",nil,180],
						["muzzle_snds_H",nil,900],
						["srifle_EBR_F",nil,86400],
						["20Rnd_762x51_Mag",nil,315],
						["muzzle_snds_B",nil,2250],
						["LMG_Zafir_F",nil,151200],
						["150Rnd_762x51_Box",nil,450],
						["srifle_GM6_LRPS_F",nil,432000],
						["5Rnd_127x108_Mag",nil,900],
						["srifle_GM6_camo_F",nil,432000],
						["5Rnd_127x108_Mag",nil,900],
						["srifle_LRR_SOS_F",nil,432000],
						["7Rnd_408_Mag",nil,900],
						["srifle_LRR_camo_F",nil,432000],
						["7Rnd_408_Mag",nil,900],

						["optic_LRPS",nil,4500],
						["optic_SOS",nil,4500],
						["optic_NVS",nil,6750],
						["optic_Arco",nil,2250],
						["optic_Hamr",nil,2250],
						["optic_MRCO",nil,2250],
						["optic_DMS",nil,2250],
						["optic_ACO_grn",nil,1350],
						["NVGoggles_OPFOR",nil,900],
						["Toolkit",nil,225],
						["FirstAidKit",nil,45],
						["Rangefinder",nil,4500],
						["Binocular",nil,90],
						["ItemGPS",nil,90],
						["ItemMap",nil,90],
						["ItemWatch",nil,90],
						["ItemCompass",nil,90]
					]
				];
			};

			case ((call life_donator) == 3):
			{
				["STS Donator Shop Tier 3",
					[
						["hgun_Pistol_heavy_01_F",nil,12960],
						["11Rnd_45ACP_Mag",nil,72],
						["arifle_SDAR_F",nil,14400],
						["20Rnd_556x45_UW_mag",nil,72],
						["arifle_Katiba_F",nil,28800],
						["30Rnd_65x39_caseless_green",nil,188],
						["arifle_MXM_Black_F",nil,43200],
						["30Rnd_65x39_caseless_mag",nil,188],
						["muzzle_snds_H",nil,941],
						["srifle_EBR_F",nil,69120],
						["20Rnd_762x51_Mag",nil,329],
						["muzzle_snds_B",nil,1800],
						["LMG_Zafir_F",nil,120960],
						["150Rnd_762x51_Box",nil,470],
						["srifle_GM6_LRPS_F",nil,345600],
						["5Rnd_127x108_Mag",nil,941],
						["srifle_GM6_camo_F",nil,345600],
						["5Rnd_127x108_Mag",nil,941],
						["srifle_LRR_SOS_F",nil,345600],
						["7Rnd_408_Mag",nil,941],
						["srifle_LRR_camo_F",nil,345600],
						["7Rnd_408_Mag",nil,941],

						["optic_LRPS",nil,3600],
						["optic_SOS",nil,3600],
						["optic_NVS",nil,5400],
						["optic_Arco",nil,1800],
						["optic_Hamr",nil,1800],
						["optic_MRCO",nil,1800],
						["optic_DMS",nil,1800],
						["optic_ACO_grn",nil,1080],
						["NVGoggles_OPFOR",nil,720],
						["Toolkit",nil,72],
						["FirstAidKit",nil,23],
						["Rangefinder",nil,3600],
						["Binocular",nil,72],
						["ItemGPS",nil,72],
						["ItemMap",nil,72],
						["ItemWatch",nil,72],
						["ItemCompass",nil,72]
					]
				];
			};
		};
	};
};