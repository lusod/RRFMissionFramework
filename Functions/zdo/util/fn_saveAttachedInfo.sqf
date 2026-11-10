/**
Save data of the attached object.
Creates a unique ID for each parent object, so everything that's attached knows what to attach to
 */
params["_o", "_v"];

if (!(isNull _v)) then {
	private _relPos = {_x - getPosAsl _o select _forEachIndex} foreach getPosAsl _v;
	private _export = 
	[
		["parent", str(_v)],
		["pos", _relPos]
	];
	/*
	private _all_ids = missionNamespace getVariable ["zdo_vehicleIds", []];
	if (_all_ids find str(_v) == -1) then {
		_all_ids pushBack str(_v);
		_v setVariable [zdo_id, str(_v)];
		missionNamespace setVariable "zdo_vehicleIds"
	};*/
	private _id = _v getVariable ["zdo_vehicleID", ""];
	if (_id == "") then {
		_id = str(v);
		_v setVariable["zdo_vehicleID", str(v)];
	}
	_o setVariable["zdo_attachedTo", _export];
	
};
