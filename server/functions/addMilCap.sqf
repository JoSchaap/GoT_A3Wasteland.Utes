// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: addMilCap.sqf
//	@file Author: AgentRev
//	@file Created: 21/10/2013 18:40
//	@file Args:

if (!isServer) exitWith {};

private ["_unit", "_time"];

_unit = _this;
_time = diag_tickTime;

// BIS_randomSeed2 is generated by \A3\characters_f\Civil\scripts\randomize_civ1.sqf
waitUntil {uiSleep 0.5; !isNil {_unit getVariable "BIS_randomSeed2"} || headgear _unit != "" || diag_tickTime - _time >= 3};

if (leader _unit == _unit) then
{
	_unit addHeadgear "rhs_fieldcap_helm";
}
else
{
	_unit addHeadgear "rhs_Booniehat_flora";
};
