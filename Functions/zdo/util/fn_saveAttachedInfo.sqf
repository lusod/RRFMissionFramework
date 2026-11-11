/**
Save data of the attached object.
Creates a unique ID for each parent object, so everything that's attached knows what to attach to
 */
params["_o", "_v"];

if (!(isNull _v)) then {
	private _relPos = _v getRelPos _o;
	private _vectorDirAndUp = [vectorDir _o, vectorUp _o];

	
	/*
	private _all_ids = missionNamespace getVariable ["zdo_vehicleIds", []];
	if (_all_ids find str(_v) == -1) then {
		_all_ids pushBack str(_v);
		_v setVariable [zdo_id, str(_v)];
		missionNamespace setVariable "zdo_vehicleIds"
	};*/
	private _id = _v getVariable ["zdo_vehicleID", ""];
	//(TODO) Make sure ID isn't being reset every pass
	if (_id isEqualTo "") then {
		_id = "lus_persist_" + (netId _o select [2]);
		_v setVariable["zdo_vehicleID", "lus_persist_" + (netId _o select [2])];
	};
	

	private _export = [_id,  _relPos, _vectorDirAndUp];
	_o setVariable["zdo_attachedInfo", _export];
	
};
//195fbaca040# 2191335: rhsusf_m1025_m2.p3d rhsusf_m1025_w_s_m2