enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.8";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "scripts\zlt_fastrope.sqf";
[] execVM "scripts\D41_Wetter.sqf";
[] execVM "scripts\safezone.sqf";



if(isDedicated && isNil("life_market_prices")) then
{
    [] call AoD_fnc_marketconfiguration;
    diag_log "Market prices generated!";
    "life_market_prices" addPublicVariableEventHandler
    {
       // diag_log format["Prix du marché mis à jour ! %1", _this select 1];
    };
};

MAC_fnc_switchMove = {
    private["_object","_anim"];
    _object = _this select 0;
    _anim = _this select 1;

    _object switchMove _anim;
    
};

call mod_cruiseControl;
StartProgress = true;