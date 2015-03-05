// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: storeOwners.sqf
//	@file Author: AgentRev, JoSchaap, His_Shadow

// Notes: Gun and general stores have position of spawned crate, vehicle stores have an extra air spawn direction
//
// Array contents are as follows:
// Name, Building Position, Desk Direction (or [Desk Direction, Front Offset]), Excluded Buttons
storeOwnerConfig = compileFinal str
[
	["GenStore1", 4, 170, []],
	["GenStore2", 5, 300, []],
	// ["GenStore3", 4, 340, []],

	["GunStore1", 2, 240, []],
	["GunStore2", 5, 200, []]
	// ["GunStore3", 5, 85, []],
	// ["GunStore4", 1, [30, 1.5], []],

	// Buttons you can disable: "Land", "Armored", "Tanks", "Helicopters", "Boats", "Planes"
	// ["VehStore1", 0, 195, ["Planes"]],
	// ["VehStore2", 2, 285, ["Boats"]],
	// ["VehStore3", 1, 245, ["Planes"]]
];

// Outfits for store owners
storeOwnerConfigAppearance = compileFinal str
[
	["GenStore1", [["weapon", ""], ["uniform", "U_B_Protagonist_VR"]]],
	["GenStore2", [["weapon", ""], ["uniform", "U_O_Protagonist_VR"]]],
	// ["GenStore3", [["weapon", ""], ["uniform", "U_I_Protagonist_VR"]]],

	["GunStore1", [["weapon", "LMG_Zafir_F"], ["uniform", "U_B_SpecopsUniform_sgg"]]],
	["GunStore2", [["weapon", "srifle_DMR_01_F"], ["uniform", "U_O_SpecopsUniform_blk"]]]
	// ["GunStore3", [["weapon", "srifle_GM6_camo_SOS_F"], ["uniform", "U_I_CombatUniform_tshirt"]]],
	// ["GunStore4", [["weapon", "arifle_Katiba_GL_F"], ["uniform", "U_IG_Guerilla1_1"]]],

	// ["VehStore1", [["weapon", ""], ["uniform", "U_IG_leader"]]],
	// ["VehStore2", [["weapon", ""], ["uniform", "U_Rangemaster"]]],
	// ["VehStore3", [["weapon", ""], ["uniform", "U_Competitor"]]]
];
