/*if(isServer) then {
    _manForOrder = "  aaaa  ";
    [man, "acex_intelitems_document",_GerhardOrder, "Order for Lt. Gerhard"] call ace_intelitems_fnc_addIntel;
    [man, "acex_intelitems_photo","img\map_fires.jpg", "Fire support plan"] call ace_intelitems_fnc_addIntel;

    
    [orderCopy, _manForOrder] call ace_intelitems_fnc_setObjectData;
};*/

#include "Functions\zdo\_mission\inc_initServer.sqf"
/*
["extract", false] call BIS_fnc_taskSetAlwaysVisible;
greenFlare = {
    extract = true; 
    standby = false;
    publicVariable "standby";
    publicVariable "extract"; 
    ["raid","SUCCEEDED"] call BIS_fnc_taskSetState;
    sleep 1;
    [west, "extract", "lus_extract", [6707.46,3369.31,0], "ASSIGNED", 1, true, "exit"] call BIS_fnc_taskCreate
};
publicVariable "greenFlare";
redFlare = {
    extract = true; 
    standby = false;
    publicVariable "standby";
    publicVariable "extract"; 
    ["raid","FAILED"] call BIS_fnc_taskSetState;
    sleep 1;
    [west, "extract", "lus_extract", [6707.46,3369.31,0], "ASSIGNED", 1, true, "exit"] call BIS_fnc_taskCreate
};
publicVariable "redFlare";
*/