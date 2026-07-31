/*[] spawn {
	waitUntil {["chill"] call BIS_fnc_taskExists};
	["chill","ASSIGNED"] call BIS_fnc_taskSetState;
};
*/

_saveLoadout_action = ["Save Loadout","Save Loadout","",{[player] call lus_loadouts_fnc_saveInventory;},{true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions"], _saveLoadout_action] call ace_interact_menu_fnc_addActionToClass;
_loadLoadout_action = ["Load Loadout","Load Loadout","",{[player] call lus_loadouts_fnc_loadInventory;},{true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions"], _loadLoadout_action] call ace_interact_menu_fnc_addActionToClass;

_loadout = [typeOf player] call lus_loadouts_fnc_getLoadout;
if (_loadout isEqualTo []) then { 
 	[player, typeOf player] call lus_loadouts_fnc_saveInventory; 
};