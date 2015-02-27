private["_unit","_dText","_weed","_cocaine","_pbrau","_sprit","_heroin","_alk"];

_unit = cursorTarget;
if(isNull _unit) exitWith {};

hint "Tests des drogues et alcools...";
sleep 2;

if(player distance _unit > 5 || !alive player || !alive _unit) exitWith {hint "Test Echoué."};

if(_unit getVariable["drug_weed",false]) then { _weed = "Positive"; } else { _weed = "Negative"; };
if(_unit getVariable["drug_cocaine",false]) then { _cocaine = "Positive"; } else { _cocaine = "Negative"; };
if(_unit getVariable["drug_heroin",false]) then { _heroin = "Positive"; } else { _heroin = "Negative"; };

hint parseText format["<t color='#FF0000'><t size='1'>%1</t></t><br/><t color='#FFD700'>Marijuana: </t>%2<br/><t color='#FFD700'>Cocaïne: </t>%3<br/><t color='#FFD700'>Héroïne: </t>%3",name _unit,_weed,_cocaine,_heroin];