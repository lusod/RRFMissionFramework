/*
  Function: lus_loadouts_loadInventory
  Description: Loads saved loadout from missionProfileNamespace to unit.

  Parameters:
    _unit: Unit to load loadout to. 
	_unitType: Unit type to get (Default: Type of _unit)

  Author: lusod 2023-12-23
*/
params ["_unit", ["_unitType", "none"]];
//Check if optional paramater is set. If not take current unit type.
_unitType = [_unitType, typeOf _unit] select (_unitType isEqualTo "none");

systemChat "Loading loadout";
_loadout = missionProfileNamespace getVariable "lus_loadout"+ str(_unitType);
//No Loadout
if (isNil "_loadout") exitWith {systemchat "No loadout found. Nothing loaded";};
	
_unit setUnitLoadout _loadout;
