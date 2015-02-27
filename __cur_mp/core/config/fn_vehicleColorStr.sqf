/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Rouge";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Blanc";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Rouge Foncé";};
			case 5: {_color = "Bleu/Blanc"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Police"};
			case 8: {_color = "Taxi"};
			case 9: {_color = "Medecin"};
			case 10: {_color = "Monster"};
			case 11: {_color = "Hyperion"};
		};
	};

	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Vert";};
			case 2: {_color = "Bleu";};
			case 3: {_color = "Bleu Foncé";};
			case 4: {_color = "Jaune";};
			case 5: {_color = "Blanc"};
			case 6: {_color = "Gris"};
			case 7: {_color = "Noir"};
			case 8: {_color = "Police"};
		};
	};

	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Rouge"};
			case 1: {_color = "Bleu Foncé"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Noir/Blanc"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Vert"};
			case 6: {_color = "Kitty"};
			case 7: {_color = "Monster"};
			case 8: {_color = "Police"};
		};
	};

	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Rouge Foncé";};
			case 1: {_color = "Police";};
			case 2: {_color = "Argenté";};
			case 3: {_color = "Orange";};
			case 4: {_color = "Batmobile"};
			case 5: {_color = "Blanc Hyperion"};
			case 6: {_color = "camo Gris"};
			case 7: {_color = "Dark Skull"};
			case 8: {_color = "Fast & Furious"};
			case 9: {_color = "Ferrari"};
			case 10: {_color = "Médecin"};
			case 11: {_color = "Camo Sable"};
			case 12: {_color = "Rouge Hyperion"};
			case 13: {_color = "Taxi"};
			case 14: {_color = "RedBull"};
			case 15: {_color = "Extrem"};
			case 16: {_color = "Rebelle"};
			case 17: {_color = "Banalisé"};
			case 18: {_color = "Silver";};
			case 19: {_color = "Orange";};
		};
	};

	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Rouge"};
		};
	};

	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Rouge"};
		};
	};

	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Rouge"};
		};
	};

	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Marron"};
			case 1: {_color = "Digi Desert"};
			case 2: {_color = "Noir"};
			case 3: {_color = "Bleu"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Blanc"};
			case 6: {_color = "Digi Vert"};
			case 7: {_color = "Hunter Camo"};
			case 8: {_color = "Rebelle Camo"};
		};
	};

	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Police"};
			case 1: {_color = "Noir"};
			case 2: {_color = "Civ Bleu"};
			case 3: {_color = "Civ Rouge"};
			case 4: {_color = "Digi Vert"};
			case 5: {_color = "Bleuline"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Blue"};
			case 9: {_color = "Speedy Rougeline"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Waves Bleu"};
			case 13: {_color = "Rebelle Digital"};
			case 14: {_color = "Medic"};
			case 15: {_color = "RedBull"};
			case 16: {_color = "Rebelle"};
		};
	};

	case "C_Heli_Light_01_civil_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blueline"};
			case 1: {_color = "Digital"};
			case 2: {_color = "Elliptical"};
			case 3: {_color = "Furious"};
			case 4: {_color = "Graywatcher"};
			case 5: {_color = "Jeans"};
			case 6: {_color = "Light"};
			case 7: {_color = "Shadow"};
			case 8: {_color = "Sheriff"};
			case 9: {_color = "Speedy Rougeline"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Wasp"};
			case 13: {_color = "Waves Bleu"};
		};
	};

	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
			case 1: {_color = "Blanc / Bleu"};
			case 2: {_color = "Digi Vert"};
			case 3: {_color = "Desert Digi"};
			case 4: {_color = "EMS Blanc"};
		};
	};

	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Police"};
		};
	};

	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Noir"};
			case 2: {_color = "RedBull"};
			case 3: {_color = "Weed"};
		};
	};

	case "I_Truck_02_medical_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Medecin"};
		};
	};

	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Noir"};
			case 2: {_color = "RedBull"};
			case 3: {_color = "Weed"};
		};
	};

	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
		};
	};

	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
		};
	};

	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
		};
	};

	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
		};
	};

	case "O_MRAP_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Bleu"};
			case 1: {_color = "Cyan"};
			case 2: {_color = "Gris"};
			case 3: {_color = "Jaune"};
			case 4: {_color = "Lave"};
			case 5: {_color = "Rouge"};
			case 6: {_color = "Rouge Foncé"};
			case 7: {_color = "Terre"};
			case 8: {_color = "Turquoise"};
			case 9: {_color = "Vert"};
			case 10: {_color = "Violet"};

			case 11: {_color = "Bleu"};
			case 12: {_color = "Cyan"};
			case 13: {_color = "Gris"};
			case 14: {_color = "Jaune"};
			case 15: {_color = "Lave"};
			case 16: {_color = "Rouge"};
			case 17: {_color = "Rouge Foncé"};
			case 18: {_color = "Terre"};
			case 19: {_color = "Turquoise"};
			case 20: {_color = "Vert"};
			case 21: {_color = "Violet"};
			case 22: {_color = "Expendable"};
		};
	};

	//Voiture Moddé
	case "cl3_458_black":
	{
		switch (_index) do
		{
			case 0: {_color = "Jaune"};
			case 1: {_color = "Noir"};
			case 2: {_color = "Bleu"};
			case 3: {_color = "Aqua"};
			case 4: {_color = "Baby Blue"};
			case 5: {_color = "Baby Pink"};
			case 6: {_color = "Rouge"};
			case 7: {_color = "Burgundy"};
			case 8: {_color = "Cardinal"};
			case 9: {_color = "Vert Sombre"};
			case 10: {_color = "Gold"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Grey"};
			case 13: {_color = "Lavender"};
			case 14: {_color = "Light Bleu"};
			case 15: {_color = "Light Jaune"};
			case 16: {_color = "Lime"};
			case 17: {_color = "Marina Bleu"};
			case 18: {_color = "Navy Blue"};
			case 19: {_color = "Orange"};
			case 20: {_color = "Purple"};
			case 21: {_color = "Sand"};
			case 22: {_color = "Silver"};
			case 23: {_color = "Blanc"};
			case 24: {_color = "Violet"};
			case 25: {_color = "Flamme"};
			case 26: {_color = "Flamme 1"};
			case 27: {_color = "Flamme 2"};
			case 28: {_color = "Ton 1"};
			case 29: {_color = "Ton 2"};
			case 30: {_color = "Ton 3"};
			case 31: {_color = "Ton 4"};
			case 32: {_color = "Ton 5"};
		};
	};
};

_color;