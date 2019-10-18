/*
Function name:MRH_fnc_MoveInGunner
Author: Mr H.
MP friendly version of moveInDriver handles locality changes
Return value: None
Public: Yes
Parameters:
0- <OBJECT> group of units
1 - <OBJECT> Vehicle to move units to
Example(s):
[unit,plane] call MRH_fnc_MoveInGunner;
*/
#include "MRH_C_Path.hpp"
[_this,
{
	Params ["_unit", "_vehicle"];

		["mrh_milsimtools_moveInGunnerEvent", [_unit, _vehicle], _unit] call CBA_fnc_targetEvent;
		
	
	
}] RemoteExec ["Call",2];