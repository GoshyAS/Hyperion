/*
	File: fn_blackjack.sqf
	Author: Hypérion Gaming

	Description:
	Célèbre jeu du BlackJack !

*/
_store = blackjack;
_denied1 = false;
_price = 2500;

if(life_hypcash < _price) exitWith {hint "Tu n'as pas assez d'argent pour jouer ! (2500€)";};
life_hypcash = life_hypcash - _price;
removeAllActions blackjack;



				hint "C'est votre tour.";
				_number = ceil(random 10);
				_pplayer = _this select 0;
				if (_number == 0) then {robberyreward = 10000; hint "19! C'est propre, gagné !";};
				if (_number == 1) then {robberyreward = 0; hint "18! Pas de chance...";};
				if (_number == 2) then {robberyreward = 0; hint "8! Looser...";};						
				if (_number == 3) then {robberyreward = 0; hint "14! Tu ne peux pas faire mieux... ?";};
				if (_number == 4) then {robberyreward = 0; hint "16! Dommage ! Retente ta chance...";};
				if (_number == 5) then {robberyreward = 0; hint "12! Désolé mais ma petite soeur joue mieux que toi ! ";};
				if (_number == 6) then {robberyreward = 0; hint "13! Encore perdu !";};
				if (_number == 7) then {robberyreward = 15000; hint "20! Pas mal, tu gagnes une belle somme !";};
				if (_number == 8) then {robberyreward = 0; hint "10! Avec ce chiffre, tu gagnes.... RIEN DU TOUT !";};
				if (_number == 9) then {robberyreward = 0; hint "11! Une autre fois peut-être";};
				if (_number == 10) then {robberyreward = 20000; hint "21!!! Jackpot!!";};
				life_action_inUse = true;
	

sleep 2;
_robberycash = robberyreward;
_timer = time + (1 * 5);	
_toFar = false;
_vault = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

while {true} do
{
	//Affichage du Timer (Sous forme de GUI pour un affichage plus propre)
	_countDown = if(round(_timer - time) > 60) then {format["%1 minute(s)",round(round(_timer - time) / 60)]} else {format["%1 second(s)",round(_timer - time)]};
	hintSilent format["Restes ici et attends ton tour.\n\nTemps restant:\n %1\n\nDistance: %2m",_countDown,round(player distance _vault)];

	if(player distance _vault > 5) exitWith {_toFar = true;};
	if((round(_timer - time)) < 1) exitWith {};
	if(!alive player) exitWith {};
	if(life_istazed) exitWith {hint "Tu as été tazé... Le jeu est terminé";};
};

switch(true) do
{
	case (_toFar):
	{
		hint "Il faut rester à moins de 5mètres de la table !";
		_denied1 = false;
		life_action_inUse = false;
	};
	
	case (!alive player):
	{
		hint "Tu as perdu car tu es mort !";
		_denied1 = false;
		life_action_inUse = false;
	};
	
	case (life_istazed):
	{
		hint "Tu as été tazé... Le jeu est terminé";
		_denied1 = false;
		life_action_inUse = false;
	};
	
	case ((round(_timer - time)) < 1):
	{
		hint format["Tu as gagné $%1.", _robberycash];
		life_hypcash = life_hypcash + _robberycash;
		_denied1 = false;
		life_action_inUse = false;
	};	
};

sleep 10;
blackjack addAction["Jouer au BlackJack (€2500)",life_fnc_blackjack];
life_action_inUse = false;