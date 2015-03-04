// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: fn_refillbox.sqf  "fn_refillbox"
//	@file Author: [404] Pulse , [404] Costlyy , [404] Deadbeat, AgentRev
//	@file Created: 22/1/2012 00:00
//	@file Args: [OBJECT (Weapons box that needs filling), STRING (Name of the fill to give to object)]

if (!isServer) exitWith {};

#define RANDOM_BETWEEN(START,END) (START + floor random ((END - START) + 1))

private ["_box", "_boxType", "_boxItems", "_item", "_qty", "_mag"];
_box = _this select 0;
_boxType = _this select 1;

_box allowDamage false; // No more fucking busted crates
_box setVariable ["A3W_inventoryLockR3F", true, true];

// Clear pre-existing cargo first
//clearBackpackCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearWeaponCargoGlobal _box;
clearItemCargoGlobal _box;

if (_boxType == "mission_USSpecial2") then { _boxType = "mission_USSpecial" };

switch (_boxType) do
{
	case "mission_USLaunchers":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["wep", ["rhs_weap_rpg26", "rhs_weap_rpg7", "rhs_weap_rshg2", "rhs_weap_fim92", "rhs_weap_M136", "rhs_weap_M136_hedp", "rhs_weap_M136_hp"], RANDOM_BETWEEN(3,5), RANDOM_BETWEEN(1,2)],
			["wep", ["rhs_weap_igla", "rhs_weap_fgm148"], RANDOM_BETWEEN(1,2), RANDOM_BETWEEN(1,2)],
			["mag", ["rhs_mag_rgd5", "rhs_mag_fakel", "rhs_mag_fakels", "rhs_mag_zarya2", "rhs_mag_plamyam", "rhs_mine_pmn2", "rhs_mine_tm62m", "rhs_mag_m67", "rhs_ammo_m84", "rhs_mine_M19_ammo", "DemoCharge_Remote_Mag", "SatchelCharge_Remote_Mag"], RANDOM_BETWEEN(3,8)]
		];
	};
	case "mission_USSpecial":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			//["itm", "NVGoggles", 5],
			["wep", ["Binocular", "Rangefinder", "rhsusf_ANPVS_14", "rhsusf_ANPVS_15"], RANDOM_BETWEEN(1,5)],
			["itm", "Medikit", RANDOM_BETWEEN(1,3)],
			["itm", "Toolkit", RANDOM_BETWEEN(0,1)],
			["itm", ["rhs_acc_1p29", "rhs_acc_1p63", "rhs_acc_1pn93_1", "rhs_acc_1pn93_2", "rhs_acc_ekp1", "rhs_acc_pgo7v", "rhs_acc_pkas", "rhs_acc_pso1m2", "rhsusf_acc_anpeq15", "rhsusf_acc_anpeq15A", "rhsusf_acc_anpeq15_light", "rhsusf_acc_EOTECH", "rhsusf_acc_LEUPOLDMK4", "rhsusf_acc_LEUPOLDMK4_2", "rhsusf_acc_ELCAN", "rhsusf_acc_ACOG", "rhsusf_acc_ACOG2", "rhsusf_acc_ACOG3", "rhsusf_acc_compm4", "HLC_Optic_PSO1", "HLC_Optic_1p29", "hlc_optic_kobra", "hlc_optic_PVS4FAL", "hlc_optic_suit", "HLC_Optic_ZFSG1", "hlc_optic_accupoint_g3", "hlc_optic_artel_m14", "hlc_optic_LRT_m14"], RANDOM_BETWEEN(1,4)],
			["itm", ["rhs_acc_tgpa", "rhsusf_acc_M2010S", "hlc_muzzle_545SUP_AK", "hlc_muzzle_762SUP_AK", "hlc_muzzle_snds_fal", "hlc_muzzle_snds_HK33", "hlc_muzzle_snds_G3", "hlc_muzzle_snds_M14", "hlc_muzzle_556NATO_KAC", "hlc_muzzle_300blk_KAC", "hlc_muzzle_Agendasix", "hlc_muzzle_Tundra", "hlc_muzzle_Agendasix10mm", "hlc_muzzle_snds_AUG", "hlc_muzzle_snds_a6AUG"], RANDOM_BETWEEN(1,4)],
			["wep", ["hlc_rifle_saiga12k", "rhs_weap_pya", "hlc_smg_mp5k"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(3,5)],
			["wep", ["rhs_weap_m16a4", "rhs_weap_m4", "rhs_weap_m4a1", "hlc_rifle_M14DMR", "rhs_weap_m14ebrri", "rhs_weap_M320", "rhs_m4_m320", "rhs_m4a1_m320", "rhs_weap_ak74m", "rhs_weap_ak74m_gp25", "hlc_rifle_ak12", "hlc_rifle_ak47", "hlc_rifle_aks74_GL", "hlc_rifle_aks74_GL", "hlc_rifle_l1a1slr",  "hlc_rifle_FAL5061", "hlc_rifle_SLRchopmod", "hlc_rifle_osw_GL", "hlc_rifle_g3sg1", "HLC_Rifle_g3ka4_GL", "hlc_rifle_RU5562", "hlc_rifle_Bushmaster300", "hlc_rifle_auga2", "hlc_rifle_augsr", "hlc_rifle_auga3_GL"], RANDOM_BETWEEN(1,4), RANDOM_BETWEEN(4,6)],
			["wep", ["rhs_weap_pkp", "hlc_rifle_RPK12", "hlc_rifle_rpk", "rhs_weap_m249_pip", "rhs_weap_m240B", "hlc_lmg_m60", "hlc_lmg_M60E4"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(2,4)],
			["mag", "30Rnd_556x45_Stanag", RANDOM_BETWEEN(2,4)],
			["mag", "20Rnd_556x45_UW_mag", RANDOM_BETWEEN(4,8)],
			["mag", "rhs_mag_9x19_17", RANDOM_BETWEEN(1,5)]
		];
	};
	case "mission_Main_A3snipers":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["wep", ["hlc_rifle_M21", "rhs_weap_svdp", "rhs_weap_svds", "rhs_weap_XM2010", "hlc_rifle_psg1"], RANDOM_BETWEEN(2,5), RANDOM_BETWEEN(4,6)],
			["wep", ["Binocular", "Rangefinder"], RANDOM_BETWEEN(1,3)],
			["itm", ["HLC_Optic_PSO1", "hlc_optic_PVS4FAL", "hlc_optic_LRT_m14", "HLC_Optic_ZFSG1", "hlc_optic_artel_m14"], RANDOM_BETWEEN(2,3)]
		];
	};
};

[_box, _boxItems] call processItems;
