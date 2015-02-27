/*
    GrenadeStop v0.8 for ArmA 3 Alpha by Bake (tweaked slightly by Rarek)
	Traduit et édité par : Johnny
    
    DESCRIPTION:
    Tue joueur tirant dans une zone safe
    
    CONFIGURATION:
    Edit the #defines below.
*/

#define SAFETY_ZONES    [["Kavala", 600],["Athira", 300],["Pyrgos", 450],["Sofia", 300],["Donation", 70],["Rebel_2", 75],["Rebel", 150]] // Syntax: [["marker1", radius1], ["marker2", radius2], ...]
#define MESSAGE "5000$ ont été retirer de ton compte en banque pour avoir tiré en SAFE ZONE"

     if (isDedicated) exitWith {};
     waitUntil {!isNull player};

switch (playerSide) do
{
	case west:
	{};
	
	case civilian:
	{


     player addEventHandler ["Fired", {
            if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then
            {
             deleteVehicle (_this select 6);
			 titleText [MESSAGE, "PLAIN", 3];
             player action ["SwitchWeapon", player, player, 100];
             life_hypatmcash = life_hypatmcash - 5000;
			 hint parseText format["<t color='#01B0F0'><t size ='2.5'<t align='center'>Safe Zone<br/><t color='#FFFFFF'><t align='center'><t size='1.5'>Pas de tirs<br/><t color='#FFFFFF'><t align='center'><t size='1.5'>Pas de braquage<br/><t"];
			 };
        }];  
	};
};