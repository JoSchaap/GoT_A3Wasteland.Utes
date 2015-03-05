// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: createRandomSoldier.sqf
/*
 * Creates a random civilian soldier.
 *
 * Arguments: [ position, group, init, skill, rank]: Array
 *    position: Position - Location unit is created at.
 *    group: Group - Existing group new unit will join.
 *    init: String - (optional, default "") Command to be executed upon creation of unit. Parameter this is set to the created unit and passed to the code.
 *    skill: Number - (optional, default 0.5)
 *    rank: String - (optional, default "PRIVATE")
 */

if (!isServer) exitWith {};

private ["_soldierTypes", "_uniformTypes", "_vestTypes", "_weaponTypes", "_group", "_position", "_rank", "_soldier"];

_soldierTypes = ["C_man_polo_1_F", "C_man_polo_2_F", "C_man_polo_3_F", "C_man_polo_4_F", "C_man_polo_5_F", "C_man_polo_6_F"];
_uniformTypes = ["rhs_uniform_flora","rhs_uniform_vdv_flora","rhs_uniform_flora_patchless","rhs_uniform_vdv_mflora","rhs_uniform_mflora_patchless","rhs_uniform_msv_emr","rhs_uniform_vdv_emr","rhs_uniform_emr_patchless","rhs_uniform_df15","rhs_uniform_cu_ucp","rhs_uniform_cu_ocp_patchless","rhs_uniform_cu_ucp","rhs_uniform_cu_ucp_patchless"];
_vestTypes = ["rhsusf_spc","rhsusf_iotv_ocp_rifleman","rhsusf_iotv_ocp","rhsusf_iotv_ocp_squadleader","rhsusf_iotv_ucp_rifleman","rhsusf_iotv_ucp","rhsusf_iotv_ucp_squadleader"];
_weaponTypes = ["rhs_weap_m4a1_carryhandle_grip2","rhs_weap_mk18_grip2","rhs_weap_m16a4_carryhandle_pmag","rhs_weap_m240B"];

_group = _this select 0;
_position = _this select 1;
_rank = [_this, 2, "", [""]] call BIS_fnc_param;

_soldier = _group createUnit [_soldierTypes call BIS_fnc_selectRandom, _position, [], 0, "NONE"];
_soldier addUniform (_uniformTypes call BIS_fnc_selectRandom);
_soldier addVest (_vestTypes call BIS_fnc_selectRandom);
[_soldier, _weaponTypes call BIS_fnc_selectRandom, 3] call BIS_fnc_addWeapon;

if (_rank != "") then
{
	_soldier setRank _rank;
};

_soldier spawn refillPrimaryAmmo;
_soldier spawn addMilCap;
_soldier call setMissionSkill;

_soldier addEventHandler ["Killed", server_playerDied];

_soldier
