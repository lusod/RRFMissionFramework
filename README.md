# RRFMissionFramework
Mission Framework for 1st RRF Arma 3 Realism Milsim Arma 3 group

## Installation
1. Save a empty mission on the map you want to use.
2. Press the green **<> Code** button and then **Download ZIP**
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

# Zdo Persistence
Included in the framework is Zdo persistence. 
This is a fantastic persistence script that saves a lot and is super easy to use. 
Highly recommend!

## Saved items

- vehicles (positions, damage, inventory, fuel, textures, flags)
- crates/boxes (positions, damage, inventory, arsenal)
- planted mines (positions)
- players (positions, loadout, ACE medical)
- all map markers
- ACE rallypoint position
- ACE trenches, ACE Fortify statics, any buildings placed by Zeus (technically, almost any static which are considered "Things" in Arma)
- ruined buildings, fences, trees
- all units (positions, loadout, ACE medical, roles in vehicles).

## Documentation

Please check out [Wiki](https://github.com/drzdo/arma3-persistent-campaign/wiki).

## Known issues
- [x] Vehicle attachments aren't saved
- [ ] Vehicle attachment ration is applied in global reference frame instead of parent vehicle reference frame
- [ ] Scale of markings are not preserved