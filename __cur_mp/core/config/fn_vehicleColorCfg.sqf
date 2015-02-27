/*
	File: fn_vehicleColorCfg.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];

switch (_vehicle) do
{
	case "I_Heli_Transport_02_F":
	{
		_path = "\a3\air_f_beta\Heli_Transport_02\Data\Skins\";
		_ret =
		[
			[_path + "heli_transport_02_1_ion_co.paa","civ",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"],
			[_path + "heli_transport_02_1_dahoman_co.paa","civ",_path + "heli_transport_02_2_dahoman_co.paa",_path + "heli_transport_02_3_dahoman_co.paa"]
		];
	};

	case "C_Hatchback_01_sport_F":
	{
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport04_co.paa","civ"],
			[_path + "hatchback_01_ext_sport05_co.paa","civ"],
			[_path + "hatchback_01_ext_sport06_co.paa","civ"],
			["textures\hatchback_kitty_hyperion.jpg","civ"],
			["textures\hatchback_monster_hyperion.jpg","civ"],
			["textures\aion_army.jpg","cop"]
		];
	};

	case "C_Hatchback_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"],
			["textures\aion_army.jpg","cop"]
		];
	};

	case "C_Offroad_01_F":
	{
		_ret =
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
			["#(ai,64,64,1)Fresnel(0.3,3)","fed"],
			["textures\offroad_army.jpg","cop"],
			["#(argb,8,8,3)color(0.6,0.3,0.01,1)","civ"],
			["textures\offroad_01_ext_base02_co.jpg","med"],
			["textures\offroad_monster_hyperion.jpg","civ"],
			["textures\offroad_sport_hyperion.jpg","civ"]

		];
	};

	case "C_SUV_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
			["textures\suv_gd.jpg","cop"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
			["textures\suv_batmob_hyperion.jpg","civ"],
			["textures\suv_blanc_hyperion.jpg","civ"],
			["textures\suv_camo_hyperion.jpg","reb"],
			["textures\suv_darkskull_hyperion.jpg","civ"],
			["textures\suv_fast_hyperion.jpg","civ"],
			["textures\suv_ferrari_hyperion.jpg","civ"],
			["textures\suv_medic_hyperion.jpg","med"],
			["textures\suv_reb_hyperion.jpg","reb"],
			["textures\suv_rouge_hyperion.jpg","civ"],
			["textures\suv_taxi_hyperion.jpg","civ"],
			["textures\civ_suv_monster.jpg","civ"],
			["textures\civ_suv_skull.jpg","civ"],
			["textures\rebelle\rebel_suv.jpg","reb"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","cop"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","cop"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","cop"]
		];
	};

	case "C_Van_01_box_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};

	case "C_Van_01_transport_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};

	case "B_Quadbike_01_F":
	{
		_ret =
		[
			["\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa","cop"],
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"]
		];
	};

	case "B_Heli_Light_01_F":
	{
		_ret =
		[
			["textures\littlebird_army.jpg","cop"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","fed"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["textures\heli_light_01_ext_blueline_co.jpg","med"],
			["textures\civ_hummingbird_redbull.jpg","civ"],
			["textures\rebelle\rebel_hummingbird.jpg","reb"]
		];
	};

	case "C_Heli_Light_01_civil_F":
	{
		_ret =
		[
		["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
		["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","civ"],
		["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
		["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
		["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_graywatcher_co.paa","civ"],
		["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
		["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_light_co.paa","civ"],
		["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_shadow_co.paa","civ"],
		["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa","civ"],
		["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
		["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
		["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
		["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wasp_co.paa","civ"],
		["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"]
		];
	};

	case "O_Heli_Light_02_unarmed_F":
	{
		_ret =
		[
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","fed"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"],
			["#(argb,8,8,3)color(1,1,1,0.8)","med"]
		];
	};

	case "B_MRAP_01_F":
	{
		_ret =
		[
			["textures\COP\Vehicles\cop_hunter_1.jpg","cop","textures\COP\Vehicles\cop_hunter_2.jpg"]
		];
	};

	case "I_Truck_02_covered_F":
	{
		_ret =
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"],
			["textures\civ_zamak_redbull_0.jpg","civ","textures\civ_zamak_redbull_1.jpg"],
            ["textures\civ_zamak_weed_0.jpg","civ","textures\civ_zamak_weed_1.jpg"]
		];
	};

	case "I_Truck_02_medical_F":
	{
		_ret =
		[
			["textures\truck_02_kab_co.jpg","med","textures\zamam_medic_ar.jpg"]
		];
	};

	case "I_Truck_02_transport_F":
	{
		_ret =
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"],
			["textures\civ_zamak_redbull_0.jpg","civ"],
			["textures\civ_zamak_weed_0.jpg","civ"]
		];
	};

	case "B_APC_Wheeled_01_cannon_F":
	{
		_ret =
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};

	case "O_Heli_Attack_02_black_F":
	{
		_ret =
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};

	case "O_MRAP_02_F":
	{
		_ret =
		[
			["textures\rebelle\AV\IfritBleu_AV.jpg","reb","textures\rebelle\AR\IfritBleu_AR.jpg"],
			["textures\rebelle\AV\IfritCyan_AV.jpg","reb","textures\rebelle\AR\IfritCyan_AR.jpg"],
			["textures\rebelle\AV\IfritGris_AV.jpg","reb","textures\rebelle\AR\IfritGris_AR.jpg"],
			["textures\rebelle\AV\IfritJaune_AV.jpg","reb","textures\rebelle\AR\IfritJaune_AR.jpg"],
			["textures\rebelle\AV\IfritLava_AV.jpg","reb","textures\rebelle\AR\IfritLava_AR.jpg"],
			["textures\rebelle\AV\IfritRouge_AV.jpg","reb","textures\rebelle\AR\IfritRouge_AR.jpg"],
			["textures\rebelle\AV\IfritRougeFonce_AV.jpg","reb","textures\rebelle\AR\IfritRougeFonce_AR.jpg"],
			["textures\rebelle\AV\IfritTerre_AV.jpg","reb","textures\rebelle\AR\IfritTerre_AR.jpg"],
			["textures\rebelle\AV\IfritTurquoise_AV.jpg","reb","textures\rebelle\AR\IfritTurquoise_AR.jpg"],
			["textures\rebelle\AV\IfritVert_AV.jpg","reb","textures\rebelle\AR\IfritVert_AR.jpg"],
			["textures\rebelle\AV\IfritViolet_AV.jpg","reb","textures\rebelle\AR\IfritViolet_AR.jpg"],

			["textures\rebelle\AV\IfritBleu_AV.jpg","civ","textures\rebelle\AR\IfritBleu_AR.jpg"],
			["textures\rebelle\AV\IfritCyan_AV.jpg","civ","textures\rebelle\AR\IfritCyan_AR.jpg"],
			["textures\rebelle\AV\IfritGris_AV.jpg","civ","textures\rebelle\AR\IfritGris_AR.jpg"],
			["textures\rebelle\AV\IfritJaune_AV.jpg","civ","textures\rebelle\AR\IfritJaune_AR.jpg"],
			["textures\rebelle\AV\IfritLava_AV.jpg","civ","textures\rebelle\AR\IfritLava_AR.jpg"],
			["textures\rebelle\AV\IfritRouge_AV.jpg","civ","textures\rebelle\AR\IfritRouge_AR.jpg"],
			["textures\rebelle\AV\IfritRougeFonce_AV.jpg","civ","textures\rebelle\AR\IfritRougeFonce_AR.jpg"],
			["textures\rebelle\AV\IfritTerre_AV.jpg","civ","textures\rebelle\AR\IfritTerre_AR.jpg"],
			["textures\rebelle\AV\IfritTurquoise_AV.jpg","civ","textures\rebelle\AR\IfritTurquoise_AR.jpg"],
			["textures\rebelle\AV\IfritVert_AV.jpg","civ","textures\rebelle\AR\IfritVert_AR.jpg"],
			["textures\rebelle\AV\IfritViolet_AV.jpg","civ","textures\rebelle\AR\IfritViolet_AR.jpg"],

			["textures\rebelle\AV\IfritExpen_AV.jpg","civ","textures\rebelle\AR\IfritExpen_AR.jpg"]
		];
	};

	//Voiture Moddé
	case "cl3_458_black":
		{
		_path = "\cl3_vehiclefunctions\skins\";
		_ret =
		[
			["\cl3_vehiclefunctions\skins\skin_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_black_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\aqua_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\baby_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\baby_pink_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\red_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\burgundy_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\cardinal_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\dark_green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\gold_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\grey_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lavender_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lime_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\marina_blue_co","civ"],
			["\cl3_vehiclefunctions\skins\navy_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\orange_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\purple_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\sand_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\silver_co.paa","civ"],
			// ["\cl3_vehiclefunctions\skins\skin_camo_co.paa","civ"],
			// ["\cl3_vehiclefunctions\skins\skin_camo_urban_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_white_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\violet_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame1_co","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame2_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone1_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone2_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone3_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone4_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone5_co.paa","civ"]
		];
	};
};

_ret;