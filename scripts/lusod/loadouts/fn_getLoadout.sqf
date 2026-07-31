/*
  Function: lus_loadouts_getLoadout
  Description: Gets loadout array from missionProfileNamespace.

  Parameters:
	_unitType: Unit type to get (Default: current player unit)

  Returns: Array with currently saved loadout

  Author:
  lusod 2023-12-23
*/
params [["_unitType", "none"]];
//Check if optional paramater is set. If not take current unit type.
_unitType = [_unitType, typeOf player] select (_unitType isEqualTo "none");

_loadout = missionProfileNamespace getVariable "lus_loadout"+ str(_unitType);
//Return empty array if no Loadout
if (isNil "_loadout") exitWith {[]};
_loadout;
