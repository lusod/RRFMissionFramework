/**
Save data of the attached object.
Creates a unique ID for each parent object, so everything that's attached knows what to attach to
 */
params["_o", "_v"];

if (!(isNull _v)) then {
	private _pos = getPosASL _o;
	private _posVeh = getPosASL _v;
	private _relPos = [0, 0, 0];
	_relPos set [0, _pos # 0- _posVeh # 0];
	_relPos set [1, _pos # 1 - _posVeh # 1];
	_relPos set [2, _pos # 2 - _posVeh # 2];

	
	/*
	private _all_ids = missionNamespace getVariable ["zdo_vehicleIds", []];
	if (_all_ids find str(_v) == -1) then {
		_all_ids pushBack str(_v);
		_v setVariable [zdo_id, str(_v)];
		missionNamespace setVariable "zdo_vehicleIds"
	};*/
	private _id = _v getVariable ["zdo_vehicleID", ""];
	if (_id isEqualTo "") then {
		_id = str(_v);
		_v setVariable["zdo_vehicleID", str(_v)];
	};
	
	_o setVariable["zdo_attachedTo", _id];
	_o setVariable["zdo_attachedPos", _relPos];
	
	private _export = [["parent", _id], ["pos", _relPos]];
	_o setVariable["zdo_attachedInfo", _export];
	
};
//195fbaca040# 2191335: rhsusf_m1025_m2.p3d rhsusf_m1025_w_s_m2