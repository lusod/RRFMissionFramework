/*
  Function: lus_loadouts_copyCargo
  Description: copies the cargo from one container to another. Destroys backpacks because Im lazy

  Parameters:
	_to: Vehicle to copy into
	_from: Vehicle to copy from

  Author:
  lusod 2026-07-04
*/

params ["_to", "_from"];

clearItemCargoGlobal _to;
clearMagazineCargoGlobal _to;
clearWeaponCargoGlobal _to;
clearBackpackCargoGlobal _to;
private _items = getItemCargo _from;
private _weapons = getWeaponCargo _from;
private _magazines = getMagazineCargo _from;
{
	_to addItemCargoGlobal [_x, _items select 1 select _forEachIndex];
} forEach (_items select 0);
{
	_to addMagazineCargoGlobal [_x, _magazines select 1 select _forEachIndex];
} forEach (_magazines select 0);
{
	_to addWeaponCargoGlobal [_x, _weapons select 1 select _forEachIndex];
} forEach (_weapons select 0);


