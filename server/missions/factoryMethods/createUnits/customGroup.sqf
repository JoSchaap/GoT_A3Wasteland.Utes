// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: customGroup.sqf
//	@file Author: AgentRev

if (!isServer) exitWith {};

private ["_group", "_pos", "_nbUnits", "_unitTypes", "_uPos", "_unit"];

_group = _this select 0;
_pos = _this select 1;
_nbUnits = [_this, 2, 7, [0]] call BIS_fnc_param;
_radius = [_this, 3, 10, [0]] call BIS_fnc_param;

_unitTypes =
[
	"C_man_polo_1_F", "C_man_polo_1_F_euro", "C_man_polo_1_F_afro", "C_man_polo_1_F_asia",
	"C_man_polo_2_F", "C_man_polo_2_F_euro", "C_man_polo_2_F_afro", "C_man_polo_2_F_asia",
	"C_man_polo_3_F", "C_man_polo_3_F_euro", "C_man_polo_3_F_afro", "C_man_polo_3_F_asia",
	"C_man_polo_4_F", "C_man_polo_4_F_euro", "C_man_polo_4_F_afro", "C_man_polo_4_F_asia",
	"C_man_polo_5_F", "C_man_polo_5_F_euro", "C_man_polo_5_F_afro", "C_man_polo_5_F_asia",
	"C_man_polo_6_F", "C_man_polo_6_F_euro", "C_man_polo_6_F_afro", "C_man_polo_6_F_asia"
];

for "_i" from 1 to _nbUnits do
{
	_uPos = _pos vectorAdd ([[random _radius, 0, 0], random 360] call BIS_fnc_rotateVector2D);
	_unit = _group createUnit [_unitTypes call BIS_fnc_selectRandom, _uPos, [], 0, "Form"];
	_unit setPosATL _uPos;

	removeAllWeapons _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	_unit addVest "rhsusf_spc";
	_unit addMagazine "rhs_mag_30Rnd_556x45_M855A1_Stanag";
	_unit addMagazine "rhs_mag_30Rnd_556x45_M855A1_Stanag";
	_unit addMagazine "rhs_mag_30Rnd_556x45_M855A1_Stanag";

	switch (true) do
	{
		// Grenadier every 3 units
		case (_i % 3 == 0):
		{
			_unit addUniform "rhs_uniform_FROG01_wd";
			_unit addMagazine "rhs_mag_M433_HEDP";
			_unit addWeapon "rhs_m4a1_m320 ";
			_unit addMagazine "rhs_mag_M433_HEDP";
			_unit addMagazine "rhs_mag_M433_HEDP";
		};
		// RPG every 7 units, starting from second one
		case ((_i + 5) % 7 == 0):
		{
			_unit addUniform "rhs_uniform_cu_ocp_patchless";
			_unit addBackpack "rhsusf_assault_eagleaiii_coy";
			_unit addWeapon "rhs_weap_m4a1_grip2 ";
			_unit addMagazine "rhs_ammo_tow_at";
			_unit addWeapon "rhs_weap_tow_launcher";
			_unit addMagazine "rhs_ammo_tow_at";
			_unit addMagazine "rhs_ammo_tow_at";
		};
		// Rifleman
		default
		{
			_unit addUniform "rhs_uniform_cu_ucp_patchless";

			if (_unit == leader _group) then
			{
				_unit addWeapon "rhs_weap_m4a1_blockII_grip2";
				_unit setRank "SERGEANT";
			}
			else
			{
				_unit addWeapon "rhs_weap_m4a1";
			};
		};
	};

	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
	_unit enablegunlights "forceOn";

	_unit addRating 1e11;
	_unit spawn addMilCap;
	_unit spawn refillPrimaryAmmo;
	_unit call setMissionSkill;
	_unit addEventHandler ["Killed", server_playerDied];
};

[_group, _pos] call defendArea;
