#include <macro.h>

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0;};

[] spawn {
  while {dialog} do {
   closeDialog 0;
   sleep 0.01;
  };
};

life_markers = !life_markers;

if(life_markers) then
{
	PlayerMarkers = [];
	FinishedLoop = false;
	
	hint "Marker activé";

	[format[
		"[ADMIN] %1 (%2) a activé le markermap.",
		getPlayerUID player,
		player getVariable["realname",name player]
	], "TON_fnc_logit", false, false] spawn life_fnc_MP;
	
	while{life_markers} do
	{
		{
			if !(_x in allUnits) then {
				deleteMarkerLocal str _x;
			};
		} forEach PlayerMarkers;

		{
			if( (_x iskindof "Air" ) || (_x iskindof "Tank") || (_x isKindOf "Land") || (_x isKindOf "Ship"))  then {
				deleteMarkerLocal str _x;
			};
		} forEach vehicles;		

		PlayerMarkers = [];
		
		{
			if( (_x iskindof "Air" ) || (_x iskindof "Tank") || (_x isKindOf "Land") || (_x isKindOf "Ship"))  then {
				_VehMark = str _x;
				_VehMark = createMarkerLocal [_VehMark, getPos _x];
				_VehMark setMarkerTypeLocal "waypoint";
				_VehMark setMarkerPosLocal getPos _x;
				_VehMark setMarkerSizeLocal [0.5,0.5];
				_VehMark setMarkerTextLocal format['%1',typeOf _x];
				
				if ((_x isKindOf "Air") || (_x isKindOf "Tank")) then {
					_VehMark setMarkerColorLocal ("ColorRed");
				} else {
					if ((_x isKindOf "Land") || (_x isKindOf "Ship")) then {
						_VehMark setMarkerColorLocal ("ColorBlue");
					};
				};
			};	 
		} forEach vehicles;
		
		{
			if(alive _x && isplayer _x) then {				
				_pSee = createMarkerLocal [str _x,getpos _x];
				_pSee setMarkerTypeLocal "waypoint";
				_pSee setMarkerPosLocal getPos _x;
				_pSee setMarkerSizeLocal [0.5,0.5];
				_pSee setMarkerTextLocal format['%1',name _x];
				_pSee setMarkerColorLocal ("ColorGreen");
				
				PlayerMarkers = PlayerMarkers + [_x];
			};
		} forEach allUnits;
	
		sleep 0.5;
	};

	FinishedLoop = true;
}
else
{
	if(isNil "FinishedLoop") exitWith {};
	
	hint "Marker désactivé";
	
	[format[
		"[ADMIN] %1 (%2) à désactivé le markermap",
		getPlayerUID player,
		player getVariable["realname",name player]
	], "TON_fnc_logit", false, false] spawn life_fnc_MP;
	
	waitUntil{FinishedLoop};
	{
		deleteMarkerLocal str _x;
	} forEach PlayerMarkers;	

	{
		if( (_x iskindof "Air" ) || (_x iskindof "Tank") || (_x isKindOf "Land") || (_x isKindOf "Ship"))  then {
			deleteMarkerLocal str _x;
		};
	} forEach vehicles;		
};