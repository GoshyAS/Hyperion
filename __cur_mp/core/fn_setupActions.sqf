/*
	File: fn_setupActions.sqf

	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case west:
	{
		//Test d'alcool
		life_actions = [player addAction["Dépistage",life_fnc_drugtestAction,cursorTarget,0,false,true,"",
		' !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && animationState cursorTarget == "AmovPercMstpSnonWnonDnon_Ease" && (cursorTarget getVariable "restrained") && (side cursorTarget == civilian) && player distance cursorTarget < 2.5 && !(cursorTarget getVariable "Escorting") ']];
		// Barrière
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Ramasser la barriére</t>",life_fnc_packupBarriere,"",0,false,false,"",' _barriere = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0; !isNil "_barriere"']];

        //Insigne POLICE
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Insigne de police</t>",life_fnc_copShowLicense,"",1,false,true,"",' playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" ']];

		life_actions = [player addAction["<t color='#FF0000'>Joint ausmachen</t>",life_fnc_extinguishJoint,"",6, false, true, "",
		' !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && animationState cursorTarget == "AmovPercMstpSnonWnonDnon_Ease" && (cursorTarget getVariable "restrained") && (side cursorTarget == civilian) && player distance cursorTarget < 2.5 && (cursorTarget getVariable ["smoke_weed",false]) && (cursorTarget getVariable ["restrained",false]) ']];

		//Saisir les armes
		life_actions = life_actions + [player addAction["Saisir les armes",life_fnc_seizePlayerWeapon,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && (cursorTarget getVariable "restrained")']];
};

	case independent:
	{
		// Barrière
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Ramasser la barriére</t>",life_fnc_packupBarriere,"",0,false,false,"",' _barriere = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0; !isNil "_barriere" && !isNil {(_barriere getVariable "item")}']];

        //Insigne SAMU
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer son Badge</t>",life_fnc_samuShowLicense,"",1,false,true,"",' playerSide == independent && !isNull cursorTarget && cursorTarget isKindOf "Man" ']];
	};

	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];

		life_actions = life_actions + [player addAction["Voler",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget in ["Incapacitated","amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"] && !(cursorTarget getVariable["robbed",FALSE]) ']];

		//Suicide Bomb
		life_actions = life_actions + [player addAction["Activer veste explosive",life_fnc_suicideBomb,"",0,false,false,"",
		'vest player == "V_HarnessOGL_brn" && alive player && playerSide == civilian && !life_istazed && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];
	};
};