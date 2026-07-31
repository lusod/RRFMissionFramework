/*
  Function: lus_loadouts_getLoadout
  Description: Clears loadout array for specified unit type from current missionProfileNamespace.

  Parameters:
	_unitType: Unit type to get (Default: current player unit)

  Author:
  lusod 2023-12-23
*/
params [["_unitType", "none"]];
//Check if optional paramater is set. If not take current unit type.
_unitType = [_unitType, typeOf player] select (_unitType isEqualTo "none");

missionProfileNamespace setVariable ["lus_loadout"+ str(_unitType), nil];
saveMissionProfileNamespace;
