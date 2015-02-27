#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};

	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000],
			["I_Truck_02_medical_F",25000],
			["O_Truck_03_medical_F",45000],
			["B_Truck_01_medical_F",60000],
			["C_SUV_01_F",20000]
		];
	};

	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",50000],
			["O_Heli_Light_02_unarmed_F",75000]
		];
	};

	case "civ_car":
	{
		_return =
		[
			["B_Quadbike_01_F",5000],
			["C_Hatchback_01_F",15000],
			["C_Offroad_01_F",17000],
			["C_SUV_01_F",40000],
			["C_Van_01_transport_F",95000]
		];
	};

	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",100000],
			["I_G_Van_01_fuel_F",120000],
			["I_Truck_02_transport_F",125000],
			["I_Truck_02_covered_F",175000],
			["B_Truck_01_transport_F",230000],
            ["B_Truck_01_box_F",350000]
		];
	};


	case "reb_car":
	{
		_return =
		[
			["B_G_Offroad_01_F",35000],
			["O_MRAP_02_F",400000],
			["B_Heli_Light_01_F",400000]
		];
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",900000]];
		};
	};


	case "cop_car":
	{
		if((call life_coplevel) > 0.9) then
		{
			_return set[count _return,
			["C_Hatchback_01_F",5000]];
			if((call life_coplevel) > 1) then
			{
				_return set[count _return,
				["C_Offroad_01_F",5000]];
				if((call life_coplevel) > 2) then
				{
					_return set[count _return,
					["C_SUV_01_F",20000]];
					_return set[count _return,
					["C_Hatchback_01_sport_F",20000]];

					if((call life_coplevel) > 4) then
					{
						_return set[count _return,
						["B_MRAP_01_F",200000]];
					};
				};
			};
		};
	};

	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",600000],
			["O_Heli_Transport_04_F",600000],
			["O_Heli_Transport_04_bench_F",700000],
			["O_Heli_Transport_04_repair_F",700000]
		];
	};

	case "cop_air":
	{
		if((call life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",100000]];

			if((call life_coplevel) > 4) then
			{
				_return set[count _return,
				["O_Heli_Light_02_unarmed_F",75000]];
				_return set[count _return,
				["B_Heli_Transport_03_unarmed_F",150000]];

				if((call life_coplevel) > 5) then
				{
					_return set[count _return,
					["B_Heli_Transport_03_F",200000]];
					_return set[count _return,
					["I_Heli_light_03_unarmed_F",100000]];
					_return set[count _return,
					["B_Heli_Transport_01_F",100000]];
				};
			};
		};
	};

	case "cop_airhq":
	{
		if((call life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",100000]];

			if((call life_coplevel) > 4) then
			{
				_return set[count _return,
				["O_Heli_Light_02_unarmed_F",75000]];

				if((call life_coplevel) > 5) then
				{
					_return set[count _return,
					["I_Heli_light_03_unarmed_F",100000]];
					_return set[count _return,
					["B_Heli_Transport_01_F",100000]];
				};
			};
		};
	};

	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		if((call life_coplevel) > 0.9) then
		{
			_return set[count _return,
			["C_Rubberboat",60000]];

			if((call life_coplevel) > 2) then
			{
				_return set[count _return,
				["C_Boat_Civil_01_police_F",75000]];

				if((call life_coplevel) > 3) then
				{
					_return set[count _return,
					["B_SDV_01_F",100000]];

					if ((call life_coplevel) > 5) then
					{
						_return set[count _return,
						["B_Boat_Armed_01_minigun_F",150000]];
					};
				};
			};
		};
	};

	case "donator":
	{
		if((call life_donator) == 1) then
		{
			_return set[count _return,["B_Truck_01_box_F",294525]]; //HEMTT
			_return set[count _return,["O_MRAP_02_F",336600]]; //Ifrit
			_return set[count _return,["B_G_Offroad_01_armed_F",757350]]; //PickUp Armed
			_return set[count _return,["I_Truck_02_covered_F",147262]]; //Zamak Covered
			_return set[count _return,["C_Hatchback_01_sport_F",28050]]; //Hayon Sport
			_return set[count _return,["B_Heli_Light_01_F",336600]]; //HummingBird
		};

		if((call life_donator) == 2) then
		{
			_return set[count _return,["B_Truck_01_box_F",252000]]; //HEMTT
			_return set[count _return,["O_Truck_03_device_F",900000]]; //Tempest Materiel
			_return set[count _return,["O_MRAP_02_F",288000]]; //Ifrit
			_return set[count _return,["B_G_Offroad_01_armed_F",648000]]; //PickUp Armed
			_return set[count _return,["I_Truck_02_covered_F",126000]]; //Zamak Covered
			_return set[count _return,["C_Hatchback_01_sport_F",21600]]; //Hayon Sport
			_return set[count _return,["O_Heli_Light_02_unarmed_F",720000]]; //Orca
			_return set[count _return,["B_Heli_Light_01_F",288000]]; //HummingBird
			_return set[count _return,["O_Heli_Transport_04_covered_F",1800000]]; //Taru Cargo
		};
		if((call life_donator) == 3) then
		{
			_return set[count _return,["B_Truck_01_box_F",162662]]; //HEMTT
			_return set[count _return,["O_Truck_03_device_F",464750]]; //Tempest Materiel
			_return set[count _return,["O_MRAP_02_F",185900]]; //Ifrit
			_return set[count _return,["B_G_Offroad_01_armed_F",418275]]; //PickUp Armed
			_return set[count _return,["I_Truck_02_covered_F",81331]]; //Zamak Covered
			_return set[count _return,["C_Hatchback_01_sport_F",13942]]; //Hayon Sport
			_return set[count _return,["O_Heli_Light_02_unarmed_F",371800]]; //Orca
			_return set[count _return,["I_Heli_Transport_02_F",858000]]; //Mohwak
			_return set[count _return,["B_Heli_Transport_03_unarmed_F",858000]]; //Huron Black
			_return set[count _return,["B_Heli_Light_01_F",185900]]; //HummingBird
		};
	};
};

_return;