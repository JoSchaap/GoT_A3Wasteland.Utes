// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: mission_LightArmVeh.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 15:19

if (!isServer) exitwith {};
#include "mainMissionDefines.sqf";

private ["_vehicleClass", "_nbUnits"];

_setupVars =
{
	_vehicleClass =
	[
		"B_MRAP_01_hmg_F",
		"B_MRAP_01_gmg_F",
		"O_MRAP_02_hmg_F",
		"O_MRAP_02_gmg_F",
		"I_MRAP_03_hmg_F",
		"I_MRAP_03_gmg_F",
		// add RHS/HLC vehicles
		"rhs_prp3_msv", "rhs_prp3_tv", "rhs_prp3_vdv", "rhs_prp3_vv", "rhs_zsu234_aa", "RHS_M2A2", "RHS_M2A3", "RHS_M6_wd", "RHS_M6"
	] call BIS_fnc_selectRandom;

	_missionType = "Light Armed Vehicle";
	_locationsArray = MissionSpawnMarkers;

	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

_this call mission_VehicleCapture;
