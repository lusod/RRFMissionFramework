params ["_object"];

private _typesToIgnore = [
	"babe_helper",
	"CBA_NamespaceDummy",
	"ACE_Rallypoint_West_Base",
	"ACE_Rallypoint_East_Base",
	"ACE_Rallypoint_Independent_Base",
	"VR_3DSelector_01_default_F",
	"UserTexture1m_F",
	"HIG_mywall",
	"CGS_Band_1", 
	"CGS_Part_Anchor",
	"CGS_Part_Ratchet",
	"CGS_Part_Hook",
	"CGS_Band_2"
];
private _typesToSave = [
	"ACE_Rallypoint_West",
	"ACE_Rallypoint_East",
	"ACE_Rallypoint_Independent",
	"ACE_tagging_texture1m"
];

private _type = typeOf _object;
if (_type in _typesToIgnore) exitWith {
	[];
};
if (_type in _typesToSave) exitWith {
	_this call zdo_persist_save_fnc_saveAsBuilding;
};
//(TODO) Make sure ID isn't being reset every pass
if (!(attachedObjects _object isEqualTo [])) then {
	if (_object getVariable ["zdo_vehicleID", ""] == "") then {
		//(TODO) Make the ID actually work
		_object setVariable ["zdo_vehicleID", "lus_persist_" + (netId _object  select [2])];
	};
};
private _attachedTo = attachedTo _object;
if (!(isNull _attachedTo)) then {
	[_object, _attachedTo] call zdo_util_fnc_saveAttachedInfo;
};

private _objectType = _object call BIS_fnc_objectType;
if (_objectType isEqualTo ["Object", "House"]) exitWith {
	_this call zdo_persist_save_fnc_saveAsBuilding;
};
if (_type isEqualTo "PortableFlagPole_01_F") exitWith {
	_this call zdo_persist_save_fnc_saveAsFlag;
};
if ((_objectType select 0) == "Vehicle") exitWith {
	_this call zdo_persist_save_fnc_saveAsVehicle;
};

if (_objectType isEqualTo ["Object", "AmmoBox"]) exitWith {
	_this call zdo_persist_save_fnc_saveAsThing;
};

_result = [];

if (_objectType isEqualTo ["Object", "Thing"]) then {
	private _isEmptyModel = (getModelInfo _object select 0) == "empty.p3d";
	if (!_isEmptyModel) then {
		_result = _this call zdo_persist_save_fnc_saveAsThing;
	};
};

_result;
