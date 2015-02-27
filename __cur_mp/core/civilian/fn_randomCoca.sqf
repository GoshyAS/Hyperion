/*
	File: fn_randomCoca.sqf
	Author: Percroy Hypérion
	Date: 14/07/2014

	Description: Zone de Coca aléatoire à chaque redémarrage
	Copyright: 2013-2014 © Tout droits réservé Hyperion Gaming
*/

private ["_posXCoca","_posYCoca","_numberCoca"];

	_numberCoca = ceil(random 9);
		if (_numberCoca == 0) then{
			_posXCoca = 9612;
			_posYCoca = 17973;
		};

		if (_numberCoca == 1) then{
			_posXCoca = 5187;
			_posYCoca = 20872;
		};

		if (_numberCoca == 2) then {
			_posXCoca = 18464;
			_posYCoca = 14290;
		};

		if (_numberCoca == 3) then {
			_posXCoca = 18012;
			_posYCoca = 11145;
		};

		if (_numberCoca == 4) then {
			_posXCoca = 11593;
			_posYCoca = 8925;
		};

		if (_numberCoca == 5) then {
			_posXCoca = 2665;
			_posYCoca = 9896;
		};

		if (_numberCoca == 6) then {
			_posXCoca = 14807;
			_posYCoca = 22400;
		};

		if (_numberCoca == 7) then {
			_posXCoca = 28231;
			_posYCoca = 25356;
		};

		if (_numberCoca == 8) then {
			_posXCoca = 23762;
			_posYCoca = 22472;
		};

		if (_numberCoca == 9) then {
			_posXCoca = 13390;
			_posYCoca = 11859;
		};



_marker = createMarker  ["cocaine_1", [_posXCoca, _posYCoca]];
"cocaine_1" setMarkerType "mil_dot";
"cocaine_1" setMarkerColor "ColorRed";
"cocaine_1" setMarkerSize [1, 1];
"cocaine_1" setMarkerText "Champ de Coca";

_marker = createMarker  ["coke_area", [_posXCoca, _posYCoca]];
"coke_area" setMarkerShape "ELLIPSE";
"coke_area" setMarkerColor "ColorWhite";
"coke_area" setMarkerSize [100, 100];