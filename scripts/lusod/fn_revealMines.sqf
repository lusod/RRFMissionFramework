variables = allVariables missionNamespace;
mines = variables select {"atmine_" in _x};
{mine = missionNamespace getVariable _x;
east revealMine mine;} forEach mines;
["Mines Revealed"] remoteExec ["hint", persist1];