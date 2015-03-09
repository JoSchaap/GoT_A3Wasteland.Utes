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

	_unit addVest "V_PlateCarrier1_rgr";
	_unit addMagazine "30Rnd_556x45_Stanag";
	_unit addMagazine "30Rnd_556x45_Stanag";
	_unit addMagazine "30Rnd_556x45_Stanag";

	switch (true) do
	{
		// Grenadier every 3 units
		case (_i % 3 == 0):
		{
			_unit addUniform "rhs_uniform_cu_ocp";
			_unit addMagazine "rhs_mag_M433_HEDP";
			_unit addWeapon "rhs_m4a1_m320_acog2";
			_unit addMagazine "rhs_mag_M433_HEDP";
			_unit addMagazine "rhs_mag_M433_HEDP";
		};
		// RPG every 7 units, starting from second one
		case ((_i + 5) % 7 == 0):
		{
			_unit addUniform "rhs_uniform_cu_ocp";
			_unit addBackpack "rhs_assault_umbts";
			_unit addWeapon "rhs_m4a1_grip_acog3";
			_unit addMagazine "rhs_rpg7_PG7VL_mag";
			_unit addWeapon "rhs_weap_rpg7";
			_unit addMagazine "rhs_rpg7_PG7VL_mag";
			_unit addMagazine "rhs_rpg7_PG7VR_mag";
		};
		// Rifleman
		default
		{
			_unit addUniform "rhs_uniform_cu_ocp";

			if (_unit == leader _group) then
			{
				_unit addWeapon "rhs_m4a1_grip_acog";
				_unit setRank "SERGEANT";
			}
			else
			{
				_unit addWeapon "rhs_m4a1_grip_acog2";
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
