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

## Connall Mod:

DO NOT USE ANY OF THESE IN YOUR PRESETS! CONNALLMOD CONTAINS THEM ALL.

Contains (In order of pbos):

- [3den Attributes Fast Load](https://steamcommunity.com/sharedfiles/filedetails/?id=3023395342)
- [A3 Thermal Improvement](https://steamcommunity.com/sharedfiles/filedetails/?id=2041057379)
- RHS AFRF Vehicle Sight Changes (Improved Quality? Not entirely sure. Might change how NVGS/Thermals work?)
- [Align](https://steamcommunity.com/sharedfiles/filedetails/?id=903134884)
- [FPV Drone Crocus](https://steamcommunity.com/sharedfiles/filedetails/?id=3045129955)
- [Tun Fire Support](https://steamcommunity.com/sharedfiles/filedetails/?id=2404759841)
- [Backpack On Chest Redux](https://steamcommunity.com/sharedfiles/filedetails/?id=2372036642)
- Clear Brush (Remove grass/bushes interactions)
- Connall Smoke (change smoke plumes to be bigger and last longer)
- [Crow's Electronic Warfare](https://steamcommunity.com/sharedfiles/filedetails/?id=2515887728)
- [Crow's Zeus Additions](https://steamcommunity.com/sharedfiles/filedetails/?id=2447965207)
- [Improved Zeus Monitor](https://steamcommunity.com/sharedfiles/filedetails/?id=3513210722)
- [Drone Signals](https://steamcommunity.com/sharedfiles/filedetails/?id=3498384986)
- [Drongo's Drone Tweaks](https://steamcommunity.com/sharedfiles/filedetails/?id=3456575967)
- [Dzn Tripods](https://steamcommunity.com/sharedfiles/filedetails/?id=1713801249)
- [Dzn RHSUSAF (Custom - skips when no RHS)](https://steamcommunity.com/sharedfiles/filedetails/?id=1947836596)
- GKenny Gear Fix (Fixes bug where uniforms disappear)
- [Grad Admin Messages](https://steamcommunity.com/workshop/filedetails/?id=2584716811)
- [Grad Axe](https://github.com/gruppe-adler/gruppe_adler_mod/blob/master/addons/axe/README.md) (Allows tree cutting if you have an axe!)
- [Grad Civilians](https://github.com/gruppe-adler/grad_civs/blob/main/README.md)
- [Grad Dynamic Groups](https://github.com/gruppe-adler/gruppe_adler_mod/blob/master/addons/dynGroups/README.md)
- [Grad Get Loadout From Unit](https://github.com/gruppe-adler/gruppe_adler_mod/blob/master/addons/getLoadoutsFromUnits/README.md) (Unsure if should keep)
- [Grad Main](https://github.com/gruppe-adler/gruppe_adler_mod/blob/master/addons/main/README.md) (Required for other grad stuff)
- [Grad MiniUI](https://github.com/gruppe-adler/grad_minui) (Removes HUD but makes it actually usable!)
- [Grad Rebreather](https://github.com/gruppe-adler/gruppe_adler_mod/blob/master/addons/rebreatherOnLand/README.md)
- [Grad Safe Boating](https://github.com/gruppe-adler/gruppe_adler_mod/blob/master/addons/safeBoating/README.md)
- [Grad Save Markers](https://github.com/gruppe-adler/gruppe_adler_mod/blob/master/addons/saveMarkers/README.md) (Can save/load markers across missions)
- [Grad Testing](https://github.com/gruppe-adler/gruppe_adler_mod/blob/master/addons/testing/README.md) (Adds functions for testing scripts @lusod)
- [Helmet on Ass](https://steamcommunity.com/sharedfiles/filedetails/?id=3487820370&searchtext=helmet+on+ass) (Helmet Slinging - MEANS YOU DONT NEED GRAD SLINGING!!!!!!!)
- [Immerse](https://steamcommunity.com/sharedfiles/filedetails/?id=825172265) 
- [Field Telephones](https://steamcommunity.com/sharedfiles/filedetails/?id=2423977008) (Tried to add skipWhenMissingDependencies, don't know if worked)
- Lusod Tweaks (Flare Changes, GM Changes etc. - ASK LUSOD!!)
- [Mavic 3 Improved](https://steamcommunity.com/sharedfiles/filedetails/?id=3401580668)
- [MFC Nato Markers](https://steamcommunity.com/sharedfiles/filedetails/?id=2933514684)
- Headbag (For all your torture/hostage pleasure!!)
- [Metis Markers](https://steamcommunity.com/sharedfiles/filedetails/?id=1508091616)
- [UAV Detector](https://steamcommunity.com/sharedfiles/filedetails/?id=3125837686)
- [No more aircraft bounce](https://steamcommunity.com/sharedfiles/filedetails/?id=1770265310)
- No 40mm Smoke Bounce
- No Action Icon (Removes the stupid icon in middle of screen all the time)
- [Orlan UAV](https://steamcommunity.com/sharedfiles/filedetails/?id=3083949886)
- [Poly's Signals](https://steamcommunity.com/sharedfiles/filedetails/?id=3270053435)
- [Dance Till You Dead](https://steamcommunity.com/sharedfiles/filedetails/?id=3247071983) (Stupid ahhh Zeus Module - Can force people to dance or dance till they explode)
- [3den MP Object Scaler](https://steamcommunity.com/sharedfiles/filedetails/?id=3591015353) (If you adjust object scale, it will not work in mp, this fixes that)
- [Scorch Missile](https://steamcommunity.com/sharedfiles/filedetails/?id=2957884934) (Stupid ahhh Zeus Module - Ties People/Vehicles to a rocket and sends them to stratosphere)
- [Zeus FPS Monitor](https://steamcommunity.com/sharedfiles/filedetails/?id=3513210722)
- [Prone Launcher](https://steamcommunity.com/sharedfiles/filedetails/?id=1841047025)
- [A bunch of RAA Stuff](https://steamcommunity.com/sharedfiles/filedetails/?id=3008701827) (ASK LUSOD)
- RRF Faction (Contains the RRF Faction with all the loadouts)
- RRF Faction Vanilla (Not entirely vanilla, contains kits with vanilla weapons uniforms etc so you can edit them without needing all the other addons)
- RRF Loadout Replacer (Replaces loadouts. Useful for vanilla faction changing - ASK CONNALL)
- RRF Logo (Changes Arma 3 logo to RRF and allows for joining the server upon clicking it)
- [Ride Where You Look](https://steamcommunity.com/sharedfiles/filedetails/?id=2153127400)
- Screenshot (Adds hotkeys to F10 and F11, one removes hud one does the same and takes a ss)
- [Simple Suppress](https://steamcommunity.com/sharedfiles/filedetails/?id=2461607508)
- [Sling Load Rigging](https://steamcommunity.com/sharedfiles/filedetails/?id=2128676112)
- [Suppress (Custom)](https://steamcommunity.com/sharedfiles/filedetails/?id=825174634)
- [Teamwork Mission Framework](https://teamonetactical.com/wiki/doku.php?id=tmf:start) (Adds a bunch of QoL functions to 3den, also super easy ACRE setup! Skips ACRE PBO if you don't have ACRE)
- [Zeus Additions](https://steamcommunity.com/sharedfiles/filedetails/?id=2387297579&searchtext=zeus+additions)
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
