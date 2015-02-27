[] spawn  {
	private["_fnc_food","_fnc_water"];
	_fnc_food = 
	{
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";}
		else
		{
		life_hunger = life_hunger - 10;
		[] call life_fnc_hudUpdate;
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";};
		switch(life_hunger) do {
			case 30: {hint localize "STR_NOTF_EatMSG_1";};
			case 20: {hint localize "STR_NOTF_EatMSG_2";};
			case 10: {hint localize "STR_NOTF_EatMSG_3";player setFatigue 1;};
			};
		};
	};
	
	_fnc_water = 
	{
		if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";}
		else
		{
			life_thirst = life_thirst - 10;
			[] call life_fnc_hudUpdate;
			if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";};
			switch(life_thirst) do 
			{
				case 30: {hint localize "STR_NOTF_DrinkMSG_1";};
				case 20: {hint localize "STR_NOTF_DrinkMSG_2"; player setFatigue 1;};
				case 10: {hint localize "STR_NOTF_DrinkMSG_3"; player setFatigue 1;};
			};
		};
	};
	
	while{true} do
	{
		sleep 600;
		[] call _fnc_water;
		sleep 250;
		[] call _fnc_food;
	};
};

[] spawn
{
	private["_bp","_load","_cfg"];
	while{true} do
	{
		waitUntil {backpack player != ""};
		_bp = backpack player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
		_load = round(_cfg / 8);
		life_maxWeight = life_maxWeightT + _load;
		waitUntil {backpack player != _bp};
		if(backpack player == "") then 
		{
			life_maxWeight = life_maxWeightT;
		};
	};
};

[] spawn
{
	while {true} do
	{
		sleep 1.5;
		if(life_carryWeight > life_maxWeight && !isForcedWalk player) then {
			player forceWalk true;
			player setFatigue 1;
			hint localize "STR_NOTF_MaxWeight";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};

[] spawn  
{
	private["_walkDis","_myLastPos","_MaxWalk","_runHunger","_runDehydrate"];
	_walkDis = 0;
	_myLastPos = (getPos player select 0) + (getPos player select 1);
	_MaxWalk = 1200;
	while{true} do 
	{
		sleep 0.5;
		if(!alive player) then {_walkDis = 0;}
		else
		{
			_CurPos = (getPos player select 0) + (getPos player select 1);
			if((_CurPos != _myLastPos) && (vehicle player == player)) then
			{
				_walkDis = _walkDis + 1;
				if(_walkDis == _MaxWalk) then
				{
					_walkDis = 0;
					life_thirst = life_thirst - 5;
					life_hunger = life_hunger - 5;
					[] call life_fnc_hudUpdate;
				};
			};
			_myLastPos = (getPos player select 0) + (getPos player select 1);
		};
	};
};

[] spawn
{
		_illegalmarkers = ["uranium_m5","uranium_m1","uranium_m2_1","uranium_m3","uranium_m4","weed_1","weed_area","Weed_p_1","heroin_1","heroin_area","heroin_p","cocaine_1","coke_area","cocaine_processing","turle_dealer","turle_dealer_1","Dealer_11","Dealer_22","Dealer_1_3","epave","meth1","meth2","meth3","pakos_dealer","Dealer_1_1","Dealer_1_1_1","gang_area_2","gang_area_1","gang_area_3","chop_shop_3","chop_shop_1","chop_shop_2","turle_dealer_2"];
		if (playerSide == west) then {
		{ deleteMarkerLocal _x; } forEach _illegalmarkers;
	};
};

[] spawn
{
	while {true} do
	{
		sleep 1.5;
		if(life_inv_uranium2 != 0) then {
			player forceWalk true;
			player setFatigue 1;
			hint "Tu porte de l'uranium brut tu ne peux pas courir pour le moment!";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
				player setFatigue 0;
			};
		};
	};
};

[] spawn
{
	while {true} do
	{
		private["_damage"];
		sleep 1;
		while {((player distance (getMarkerPos "uranium_1") < 150) && (player getVariable["Revive",TRUE]))} do
		{
			if((uniform player == "U_C_Scientist") && (headgear player == "H_PilotHelmetFighter_I")) then
			{
				hint "!!! Tu es dans une zone radioactive !!! Mais ta combinaison te protège partiellement";
				_damage = damage player;
				_damage = _damage + 0.06;
				player setDamage (_damage);
				[] call life_fnc_hudUpdate;
				sleep 10;
			}else
			{
				hint "!!! ATTENTION TU ES DANS UNE ZONE RADIOACTIVE !!! Tu risques de mourir si tu n'es pas protégé";
				_damage = damage player;
				_damage = _damage + 0.10;
				player setDamage (_damage);
				[] call life_fnc_hudUpdate;
				sleep 5;
			};
		};
	};
}; 