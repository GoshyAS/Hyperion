/*
	File: fn_randomWeed.sqf
	Author: Percroy Hypérion
	Date: 14/07/2014

	Description: Zone d'Heroine aléatoire à chaque redémarrage
	Copyright: 2013-2014 © Tout droits réservé Hyperion Gaming
*/

private ["_posX","_posY","_number"];

	_number = ceil(random 9);
		if (_number == 0) then{
			_posX = 19878;
			_posY = 17011;
		};

		if (_number == 1) then{
			_posX = 28269;
			_posY = 25590;
		};

		if (_number == 2) then {
			_posX = 18798;
			_posY = 7474;
		};

		if (_number == 3) then {
			_posX = 17592;
			_posY = 9741;
		};

		if (_number == 4) then {
			_posX = 16719;
			_posY = 13552;
		};

		if (_number == 5) then {
			_posX = 13642;
			_posY = 12302;
		};

		if (_number == 6) then {
			_posX = 13104;
			_posY = 7428;
		};

		if (_number == 7) then {
			_posX = 2228;
			_posY = 22297;
		};

		if (_number == 8) then {
			_posX = 10318;
			_posY = 16907;
		};

		if (_number == 9) then {
			_posX = 17893;
			_posY = 16863;
		};



_marker = createMarker  ["heroin_1", [_posX, _posY]];
"heroin_1" setMarkerType "mil_dot";
"heroin_1" setMarkerColor "ColorRed";
"heroin_1" setMarkerSize [1, 1];
"heroin_1" setMarkerText "Champ d'Héroïne";

_marker = createMarker  ["heroin_area", [_posX, _posY]];
"heroin_area" setMarkerShape "ELLIPSE";
"heroin_area" setMarkerColor "ColorWhite";
"heroin_area" setMarkerSize [100, 100];