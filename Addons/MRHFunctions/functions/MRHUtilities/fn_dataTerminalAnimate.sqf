/*
Function name:MRH_fnc_
Author: Mr H.
Description:
Return value:
Public:
Parameters:
Example(s):
[this] call MRH_fnc_dataTerminalAnimate;
*/
#include "MRH_C_Path.hpp"
params ["_DT",["_videoToPlay","\MRHMiscItems\Videos\compuHack.ogv"]];
[_DT,_videoToPlay] spawn {
	params ["_DT",["_videoToPlay","\MRHMiscItems\Videos\compuHack.ogv"]];

	[_DT, "red", "blue", "green"] call BIS_fnc_DataTerminalColor;
	[_DT, 1] call BIS_fnc_DataTerminalAnimate;
	playSound3D ["MRHFunctions\sounds\computerstartup.ogg",_DT];
	sleep 2;
	[_DT, 2] call BIS_fnc_DataTerminalAnimate;
	playSound3D ["MRHFunctions\sounds\computerbip.ogg",_DT];
	sleep 2;
	[_DT, 3] call BIS_fnc_DataTerminalAnimate;
	playSound3D ["MRHFunctions\sounds\computerkeystrokes.ogg",_DT];
	[_DT,_videoToPlay] spawn MRH_fnc_MilsimTools_Core_playVideoOnObject;
};