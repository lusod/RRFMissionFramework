# RRFMissionFramework
Mission Framework for 1st RRF Arma 3 Realism Milsim Arma 3 group

## Installation
1. Save a empty mission on the map you want to use.
2. Go to releases. Download the latest version.
3. Put all the contents into the mission folder
4. Change the stuff in description.ext

## Notes about lusods loadout system
The loadout system is made to make sure that the loadouts you make in 3den are saved when players die and respawn.
Further then that it also lets player save their loadouts, so they are auto loaded when they respawn.
It does it *per campaign and per role* so if a player saves a loadout in mission 1 and *plays the same role* in mission 2 the loadout will still autoload.
Note that it's per role, which is counted as the class name of the slot the player is playing in.

The way it tracks which campaign is active is by the `missionGroup = "RRFDefault"` line in *description.ext*.
If you're not using default loadouts, change `RRFDefault` to something unique for your campaign.

## Addon options
Instead of addon options being manually applied ingame, the framework sets it's mission in `cba_settings.sqf`.
If you want to change the settings you have the export the changed settings ingame and replace the contents in `cba_settings.sqf`. 
But it's best to stick the default unless you really need it.

## Respawn
If you have a problem with respawns, try placing a empty marker and settings the variable name to respawn!