/*
 Function: lus_loadouts_saveInventory
 Description: Saves current loadout to missionProfileNamespace.

 Parameters:
 _unit: Unit to save loadout from. 
	 _unitType: Unit type to get (Default: Type of _unit)

 Author: lusod 2023-12-23
*/
params ["_unit", ["_unitType", "none"]];
//Check if optional paramater is set. If not take current unit type.
_unitType = [_unitType, typeOf _unit] select (_unitType isEqualTo "none");

_loadout = getUnitLoadout _unit;

missionProfileNamespace setVariable ["lus_loadout"+ str(_unitType), _loadout];
saveMissionProfileNamespace;
systemChat "Loadout saved";

