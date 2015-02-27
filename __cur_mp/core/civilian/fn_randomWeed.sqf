/*
	File: fn_randomWeed.sqf
	Author: Percroy Hypérion
	Date: 14/07/2014

	Description: Zone de Weed aléatoire à chaque redémarrage
	Copyright: 2013-2014 © Tout droits réservé Hyperion Gaming
*/

private ["_posXWeed","_posYWeed","_numberWeed"];

	_numberWeed = ceil(random 9);
		if (_numberWeed == 0) then{
			_posXWeed = 11556;
			_posYWeed = 7048;
		};

		if (_numberWeed == 1) then{
			_posXWeed = 18795;
			_posYWeed = 7469;
		};

		if (_numberWeed == 2) then {
			_posXWeed = 2340;
			_posYWeed = 9293;
		};

		if (_numberWeed == 3) then {
			_posXWeed = 11039;
			_posYWeed = 16896;
		};

		if (_numberWeed == 4) then {
			_posXWeed = 3678;
			_posYWeed = 18348;
		};

		if (_numberWeed == 5) then {
			_posXWeed = 7113;
			_posYWeed = 20651;
		};

		if (_numberWeed == 6) then {
			_posXWeed = 13189;
			_posYWeed = 22807;
		};

		if (_numberWeed == 7) then {
			_posXWeed = 23732;
			_posYWeed = 22485;
		};

		if (_numberWeed == 8) then {
			_posXWeed = 18000;
			_posYWeed = 11137;
		};

		if (_numberWeed == 9) then {
			_posXWeed = 17892;
			_posYWeed = 16857;
		};



_marker = createMarker  ["weed_1", [_posXWeed, _posYWeed]];
"weed_1" setMarkerType "mil_dot";
"weed_1" setMarkerColor "ColorRed";
"weed_1" setMarkerSize [1, 1];
"weed_1" setMarkerText "Champ de Weed";

_marker = createMarker  ["weed_area", [_posXWeed, _posYWeed]];
"weed_area" setMarkerShape "ELLIPSE";
"weed_area" setMarkerColor "ColorWhite";
"weed_area" setMarkerSize [100, 100];