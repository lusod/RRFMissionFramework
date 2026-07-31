
[
	["B_supplyCrate_F",["Resupply - Ammo","@resupply"],{
		[_this, ammoSupplies] call lus_fnc_copyCargo;
	},[],5,5,5],
	["CargoNet_01_box_F",["Resupply - Medical","@resupply"],{
		[_this, medicalSupplies] call lus_fnc_copyCargo;
	},[],3,3,3],
	["Box_NATO_AmmoOrd_F",["Resupply - Drones","@resupply"],{
		[_this, droneSupplies] call lus_fnc_copyCargo;
	},[],2,2,2]
]
