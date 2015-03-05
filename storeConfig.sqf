// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
/*********************************************************#
# @@ScriptName: storeConfig.sqf
# @@Author: His_Shadow, AgentRev
# @@Create Date: 2013-09-16 20:40:58
#*********************************************************/

// This tracks which store owner the client is interacting with
currentOwnerName = "";

// Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost

pistolArray = compileFinal str
[
	// Handguns
	["MP-443", "rhs_weap_pya", 50],
	["HK MP5k", "hlc_smg_mp5k", 100]
];

smgArray = compileFinal str
[
	["HK MP5k PDW", "hlc_smg_mp5k_PDW", 125],
	["MP5A2 no rail", "hlc_smg_mp5a2", 125],
	["MP5A3 no rail", "hlc_smg_mp5a3", 125],
	["MP5A4 Navy", "hlc_smg_mp5a4", 150],
	["MP5N Navy", "hlc_smg_mp5n", 150],
	["MP5/10 Navy", "hlc_smg_mp510", 150],
	["MP5SD5 Navy", "hlc_smg_mp5sd5", 175],
	["MP5SD6 Navy", "hlc_smg_mp5sd6", 175],
	["Navy SMG (Half-Life)", "hlc_smg_9mmar", 200],
	["Steyr AUGA1 9mm Para", "hlc_rifle_augpara", 225],
	["Steyr AUGA2 9mm Para", "hlc_rifle_auga2para", 225]
];

rifleArray = compileFinal str
[
//SHOTGUN
	["Izhmash Saiga12K", "hlc_rifle_saiga12k", 400],
//Underwater
	["SDAR Underwater Rifle", "arifle_SDAR_F", 100],
//Mx
	["M14", "hlc_rifle_M14", 375],
	["M14 DMR(ArmA2 DMR)", "hlc_rifle_M14DMR", 375],
	["Troy M14 SOPMOD", "hlc_rifle_m14sopmod", 450],
	["Mk14 EBR-RI", "rhs_weap_m14ebrri", 450],
	["M16A4 RIS", "rhs_weap_m16a4", 200],
	["M16A4 (Bipod)", "rhs_weap_m16a4_bipod", 225],
	["M16A4 (Grippod)", "rhs_weap_m16a4_grip", 225],
	["M16A4 (Carryhandle)", "rhs_weap_m16a4_carryhandle", 225],
	["M16A4 (Carryhandle/Pmag)", "rhs_weap_m16a4_carryhandle_pmag", 225],
	["M320 GLM", "rhs_weap_M320", 250],
	["M4 RIS", "rhs_weap_m4", 300],
	["M4 (AFG)", "rhs_weap_m4_grip2", 300],
	["M4 (Bipod)", "rhs_weap_m4_bipod", 300],
	["M4 (Grippod)", "rhs_weap_m4_grip", 300],
	["M4 (Carryhandle)", "rhs_weap_m4_carryhandle", 300],
	["M4 (Carryhandle/PMAG)", "rhs_weap_m4_carryhandle_pmag", 300],
	["M4 (M320)", "rhs_m4_m320", 375],
	["M4A1 RIS", "rhs_weap_m4a1", 325],
	["M4A1 (AFG)", "rhs_weap_m4a1_grip2", 325],
	["M4A1 (Bipod)", "rhs_weap_m4a1_bipod", 325],
	["M4A1 (Grippod)", "rhs_weap_m4a1_grip", 325],
	["M4A1 (M320)", "rhs_m4a1_m320", 400],
//AKs
	["AK-74M", "rhs_weap_ak74m", 325],
	["AK-74M (folded)", "rhs_weap_ak74m_folded", 325],
	["AK-74M (2 mag)", "rhs_weap_ak74m_2mag", 325],
	["AK-74M (GP-25 Kostyor)", "rhs_weap_ak74m_gp25", 400],
	["AK12", "hlc_rifle_ak12", 325],
	["Izhmash AK47", "hlc_rifle_ak47", 375],
	["Izhmash EAK971", "hlc_rifle_aek971", 500],
	["Izhmash AKS74", "hlc_rifle_aks74", 300],
	["Izhmash AKS74 GL", "hlc_rifle_aks74_GL", 700],
	["Izhmash AKS74U", "hlc_rifle_aks74u", 300],
	["Izhmash AK74", "hlc_rifle_ak74", 300],
	["Izhmash AKS74 GP30", "hlc_rifle_aks74_GL", 400],
	["Izhmash AKM", "hlc_rifle_akm", 375],
	["Izhmash AKM GL GP25", "hlc_rifle_akmgl", 450],
//FALs
	["Enfield L1A1 SLR", "hlc_rifle_l1a1slr", 375],
	["Lithgow SLR (Aussy L1A1)", "hlc_rifle_SLR", 375],
	["Steyr STG.58", "hlc_rifle_STG58F", 375],
	["FN FAL (Para)", "hlc_rifle_FAL5061", 375],
	["FN C1A1 (CAN SLR)", "hlc_rifle_c1A1", 375],
	["FN LAR (Israel)", "hlc_rifle_LAR", 375],
	["Lithgow SLR Chopmod", "hlc_rifle_SLRchopmod", 375],
	["DSA FAL OSW", "hlc_rifle_falosw", 400],
	["DSA FAL OSW M203GL", "hlc_rifle_osw_GL", 450],
//G3
	["H&K G3SG1", "hlc_rifle_g3sg1", 375],
	["H&K G3A3", "hlc_rifle_g3a3", 375],
	["H&K G3KA4", "hlc_rifle_g3ka4", 375],
	["H&K G3KA4 M203", "HLC_Rifle_g3ka4_GL", 375],
	["FR Ordnance MC51 (G3)", "hlc_rifle_hk51", 375],
	["H&K HK53", "hlc_rifle_hk53", 375],
//AR
	["AR15 Sanitied Carbine", "hlc_rifle_RU556", 350],
	["AR15 Magpul Carbine", "hlc_rifle_RU5562", 350],
	["Colt Carbine(727 Commando)", "hlc_rifle_Colt727", 350],
	["Colt Carbine M203(727 Commando)", "hlc_rifle_Colt727_GL", 425],
	["Bravo Company MFG/Haley", "hlc_rifle_bcmjack", 350],
	["Bushmaster .300 Carbine", "hlc_rifle_Bushmaster300", 400],
	["AR15 .300 Dissipator", "hlc_rifle_vendimus", 400],
	["Rock River Arms LAR-15 AMR", "hlc_rifle_SAMR", 350],
	["Rock River Arms LAR-15 AMR N", "hlc_rifle_samr2", 350],
	["AAC Honey-Badger Carbine", "hlc_rifle_honeybadger", 400],
//STEYR AUGs
	["Steyr AUGA1 Rifle", "hlc_rifle_aug", 350],
	["Steyr AUGA1 Carbine", "hlc_rifle_auga1carb", 350],
	["Steyr AUGA1 Heavy", "hlc_rifle_aughbar", 350],
	["Steyr AUGA2 Rifle", "hlc_rifle_auga2", 350],
	["Steyr AUGA2 Carbine", "hlc_rifle_auga2carb", 350],
	["Steyr AUGA2 Heavy", "hlc_rifle_auga2lsw", 350],
	["Steyr AUGSR Rifle", "hlc_rifle_augsr", 350],
	["Steyr AUGSR Carbine", "hlc_rifle_augsrcarb", 350],
	["Steyr AUGSR Heavy", "hlc_rifle_augsrhbar", 350],
	["Steyr AUGA3 Rifle (Green)", "hlc_rifle_auga3", 350],
	["Steyr AUGA3 with M203A1 (Green)", "hlc_rifle_auga3_GL", 425],
// Sniper Rifles
	["M21", "hlc_rifle_M21", 900],
	["SVD-M Dragunov", "rhs_weap_svdp", 1000],
	["SVD-S Dragunov", "rhs_weap_svds", 1000],
	["M2010 ESR", "rhs_weap_XM2010", 1250],
	["H&K PSG1", "hlc_rifle_psg1", 1700]
];

lmgArray = compileFinal str
[
	["PKP (Pecheneg)", "rhs_weap_pkp", 450],
	["Izhmash RPK12", "hlc_rifle_RPK12", 450],
	["Izhmash RPK", "hlc_rifle_rpk", 450],
	["M249 PIP(SAW)", "rhs_weap_m249_pip", 375],
	["M240B", "rhs_weap_m240B", 450],
	["M60 (no optic)", "hlc_lmg_m60", 450],
	["M60E4", "hlc_lmg_M60E4", 450]
];

launcherArray = compileFinal str
[
//AFRF
	["9K38 Igla AA", "rhs_weap_igla", 1500],
	["RPG-26", "rhs_weap_rpg26", 700],
	["RPG-7", "rhs_weap_rpg7", 400],
	["RShG-2", "rhs_weap_rshg2", 700],
//USAF
	["FGM-148 Javelin", "rhs_weap_fgm148", 3500], //20k
	["FIM-92F", "rhs_weap_fim92", 1500], //20k
	["M136 (HEAT)", "rhs_weap_M136", 700],
	["M136 (HEDP)", "rhs_weap_M136_hedp", 700],
	["M136 (HP)", "rhs_weap_M136_hp", 700]
];

allGunStoreFirearms = compileFinal str (call pistolArray + call smgArray + call rifleArray + call lmgArray + call launcherArray);

staticGunsArray = compileFinal str
[
	// nope.. not on utes
];

throwputArray = compileFinal str
[
	["RGD-5", "rhs_mag_rgd5", 100],
	["RGD-2 (white smoke)", "rhs_mag_rdg2_white", 50],
	["RGD-2 (black smoke)", "rhs_mag_rdg2_black", 50],
	["NSP-N (red flare)", "rhs_mag_nspn_red", 50],
	["NSP-D (red flare)", "rhs_mag_nspd", 50],
	["Fakel", "rhs_mag_fakel", 100],
	["Fakel-S", "rhs_mag_fakels", 100],
	["Zarya-2", "rhs_mag_zarya2", 100],
	["Plamya-M", "rhs_mag_plamyam", 100],
	["PMN-2 AP", "rhs_mine_pmn2", 300],
	["TM-62M AT", "rhs_mine_tm62m", 350],
	["M67 Frag Grenade", "rhs_mag_m67", 100],
	["M84 Stun Grenade", "rhs_ammo_m84", 100],
	["M19 AT", "rhs_mine_M19_ammo", 300],
	["Explosive Charge", "DemoCharge_Remote_Mag", 450],
	["Explosive Satchel", "SatchelCharge_Remote_Mag", 500]
// Why didn't they also re-add the rocks from A2? throwing rocks is awesome!
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = compileFinal str
[
	["9x19mm Parabellum", "rhs_mag_9x19_17", 10],
	
// SDAR-underwater
 	["5.56mm 20Rnd (SDAR-Underwater)", "20Rnd_556x45_UW_mag", 10],
	["5.56mm 30Rnd (SDAR-STANAG)", "30Rnd_556x45_Stanag", 20],
	
	["5N7 AK-74 30Rnd", "rhs_30Rnd_545x39_AK", 30],
	["7T3M AK-74 30Rnd", "rhs_30Rnd_545x39_AK_green", 30],
	["7N10 AK-74 30Rnd", "rhs_30Rnd_545x39_7n10_AK", 30],
	["7N22 AK-74 30Rnd", "rhs_30Rnd_545x39_7n22_AK", 30],
	["5N7 RPK-74 45Rnd", "rhs_45Rnd_545X39_AK", 45],
	["7T3M RPK-74 45Rnd", "rhs_45Rnd_545X39_AK_Green", 40],
	["7N10 RPK-74 45Rnd", "rhs_45Rnd_545X39_7N10_AK", 45],
	["7N22 RPK-74 45Rnd", "rhs_45Rnd_545X39_7N22_AK", 45],
	["762x54mmR 100Rnd", "rhs_100Rnd_762x54mmR", 150],
	["7N1 10Rnd", "rhs_10Rnd_762x54mmR_7N1", 50],
	["M14 20Rnd", "20Rnd_762x51_Mag", 25],
	["Mk262 30Rnd", "rhs_mag_30Rnd_556x45_Mk262_Stanag", 30],
	["Mk318 30Rnd", "rhs_mag_30Rnd_556x45_Mk318_Stanag", 30],
	["M885A1 30Rnd", "rhs_mag_30Rnd_556x45_M855A1_Stanag", 30],
	["M885A1 (red) 30Rnd", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 25],
	["M885A1 (green) 30Rnd", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green", 25],
	["M885A1 (yellow) 30Rnd", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow", 25],
	[".300 Win Mag 5Rnd", "rhsusf_5Rnd_300winmag_xm2010", 50],
	["M240 100Rnd", "rhsusf_100Rnd_762x51", 100],
	["M249 100Rnd", "rhsusf_100Rnd_556x45_soft_pouch", 100],
	["M249 200Rnd", "rhsusf_200Rnd_556x45_soft_pouch", 200],
	["7.62x51mm Ball 100Rnd", "hlc_100Rnd_762x51_B_M60E4", 150],
	["7.62x51mm Tracer 100Rnd", "hlc_100Rnd_762x51_T_M60E4", 150],
	["7.62x51mm Mixed 100Rnd", "hlc_100Rnd_762x51_M_M60E4 ", 150],
	["5.45x39mm Ball 30Rnd", "hlc_30Rnd_545x39_B_AK", 30],
	["5.45x39mm Tracer 30Rnd", "hlc_30Rnd_545x39_T_AK", 30],
	["5.45x39mm EPR 30Rnd", "hlc_30Rnd_545x39_EP_AK", 30],
	["5.45x39mm S 30Rnd", "hlc_30Rnd_545x39_S_AK", 30],
	["5.45x39mm Mixed 45Rnd", "hlc_45Rnd_545x39_t_rpk", 45],
	["7.62x39mm Ball 30Rnd", "hlc_30Rnd_762x39_b_ak", 30],
	["7.62x39mm Tracer 30Rnd", "hlc_30Rnd_762x39_t_ak", 45],
	["7.62x39mm Tracer 45Rnd", "hlc_45Rnd_762x39_t_rpk", 60],
	["7.62x39mm Mixed 45Rnd", "hlc_45Rnd_762x39_m_rpk", 60],
	["7.62x39mm Tracer 45Rnd", "HLC_45Rnd_762x39_T_RPK", 60],
	["7.62x39mm Mixed 75Rnd", "hlc_75Rnd_762x39_m_rpk", 85],
	["7.62x51mm Ball 20Rnd", "hlc_20Rnd_762x51_B_fal", 30],
	["7.62x51mm Tracer 20Rnd", "hlc_20Rnd_762x51_t_fal", 25],
	["7.62x51mm Subsonic 20Rnd", "hlc_20Rnd_762x51_S_fal", 30],
	["7.62x51mm Mixed 50Rnd", "hlc_50rnd_762x51_M_FAL", 75],
	["7.62x51mm Ball 20Rnd", "hlc_20Rnd_762x51_B_G3", 30],
	["7.62x51mm Tracer 20Rnd", "hlc_20rnd_762x51_T_G3", 25],
	["7.62x51mm Mixed 50Rnd", "hlc_50rnd_762x51_M_G3", 100],
	["5.56x45mm Ball", "hlc_30rnd_556x45_b_HK33", 30],
	["5.56x45mm Tracer", "hlc_30rnd_556x45_t_HK33", 25],
	["5.565mm EPR", "hlc_30rnd_556x45_epr_HK33", 30],
	["5.56x45mm SOST", "hlc_30rnd_556x45_sost_HK33", 30],
	["7.62x51mm Ball", "hlc_20Rnd_762x51_B_M14", 30],
	["7.62x51mm Tracer", "hlc_20rnd_762x51_T_M14", 25],
	["7.62x51mm Mixed", "hlc_50rnd_762x51_M_M14", 75],
	[".300 Blackout 29rnd", "29rnd_300BLK_STANAG", 60],
	[".300 Blackout Tracer 29rnd", "29rnd_300BLK_STANAG_T", 60],
	[".300 Blackout FMJ 29rnd", "29rnd_300BLK_STANAG_S", 60],
	["5.56x45mm NATO EPR 30rnd", "hlc_30rnd_556x45_EPR", 30],
	["5.56x45mm NATO Mk318(SOST)30rnd", "hlc_30rnd_556x45_SOST", 30],
	["5.56x45mm NATO Mk262 30rnd", "hlc_30rnd_556x45_SPR", 30],
	["9x19mm M882 NATO Ball 30rnd", "hlc_30Rnd_9x19_B_MP5", 30],
	["9x19mm LE Hollowpoints 30rnd", "hlc_30Rnd_9x19_GD_MP5", 30],
	["9x19mm M882 subsonic 30rnd", "hlc_30Rnd_9x19_SD_MP5", 30],
	["10mm Auto FMJ 30rnd", "hlc_30Rnd_10mm_B_MP5", 40],
	["10mm Auto LE HP 30rnd", "hlc_30Rnd_10mm_JHP_MP5", 40],
	["5.56x45mm EPR 30rnd", "hlc_30Rnd_556x45_B_AUG", 30],
	["5.56x45mm Mk318 SOST 30rnd", "hlc_30Rnd_556x45_SOST_AUG", 30],
	["5.56x45mm Mk262 SPR 30rnd", "hlc_30Rnd_556x45_SPR_AUG", 30],
	["5.56x45mm Tracer 30rnd", "hlc_30Rnd_556x45_T_AUG", 30],
	["5.56x45mm EPR 40Rnd", "hlc_40Rnd_556x45_B_AUG", 40],
	["5.56x45mm Mk318 SOST 40Rnd", "hlc_40Rnd_556x45_SOST_AUG", 40],
	["5.56x45mm Mk262 SPR 40Rnd", "hlc_40Rnd_556x45_SPR_AUG", 40],
	["9x19mm M882 Ball 25Rnd", "hlc_25Rnd_9x19mm_M882_AUG", 30],
	["9x19mm LE HP 25Rnd", "hlc_25Rnd_9x19mm_JHP_AUG", 30],
	["9x19mm Subsonic 25Rnd", "hlc_25Rnd_9x19mm_subsonic_AUG", 30],
	["12g Buckshot 10rnd", "hlc_10rnd_12g_buck_S12", 50],
	["12g Slug 10rnd", "hlc_10rnd_12g_slug_S12", 50],
	["HE GP25 GP30", "hlc_VOG25_AK", 100],
	["Smoke GP25 GP30", "hlc_GRD_White", 75],
	["9M39 lgla", "rhs_mag_9k38_rocket", 650],
	["RPG-26 rocket", "rhs_rpg26_mag", 550],
	["PG-7VL RPG-7V2", "rhs_rpg7_PG7VL_mag", 550],
	["PG-7VR RPG-7V2", "rhs_rpg7_PG7VR_mag", 550],
	["OG-7V RPG-7V2", "rhs_rpg7_OG7V_mag", 550],
	["TBG-7V RPG-7V2", "rhs_rpg7_TBG7V_mag", 550],
	["RShG-2", "rhs_rshg2_mag", 550],
	["HEAT missile", "rhs_fgm148_magazine_AT", 850], //5k
	["Stinger missile", "rhs_fim92_mag", 650],
	["84mm HEAT", "rhs_m136_mag", 250],
	["84mm HEDP", "rhs_m136_hedp_mag", 300],
	["84mm HP", "rhs_m136_hp_mag", 250],
	["VOG-25", "rhs_VOG25", 100],
	["VOG-25P (Bouncing)", "rhs_VOG25p", 100],
	["VOG-25TB (Thermobaric)", "rhs_vg40tb", 100],
	["VOG-40SZ (Flashbang)", "rhs_g_vg40sz", 75],
	["VOG-40 (White Flare)", "rhs_vg40op_white", 50],
	["VOG-40 (Red Flare)", "rhs_vg40op_red", 50],
	["GRD-40 (White Smoke)", "rhs_GRD40_white", 50],
	["GRD-40 (Red Smoke)", "rhs_GRD40_red", 50],
	["M433", "rhs_mag_M433_HEDP", 100],
	["Stun grenade", "rhs_mag_M4009", 75],
	["M576 Buckshot", "rhs_mag_m576", 50],
	["M585 (White flare)", "rhs_mag_M585_white", 50],
	["M661 (Green flare)", "rhs_mag_M661_green", 50],
	["M662 (Red flare)", "rhs_mag_M662_red", 50],
	["M713 (Red Smoke)", "rhs_mag_M713_red", 50],
	["M714 (White Smoke)", "rhs_mag_M714_white", 50],
	["M715 (Green Smoke)", "rhs_mag_M715_green", 50],
	["M716 (Yellow Smoke)", "rhs_mag_M716_yellow", 50],
//LEGACY
	["40mm HE Grenade Round", "1Rnd_HE_Grenade_shell", 125],
	["40mm 3Rnd HE Grenades", "3Rnd_HE_Grenade_shell", 250],
	["40mm Smoke Round (White)", "1Rnd_Smoke_Grenade_shell", 50],
	["40mm 3Rnd Smokes (White)", "3Rnd_Smoke_Grenade_shell", 100],
	["40mm Flare Round (White)", "UGL_FlareWhite_F", 25],
	["40mm Flare Round (Red)", "UGL_FlareRed_F", 25],
	["40mm Flare Round (IR)", "UGL_FlareCIR_F", 25],
	["40mm 3Rnd Flares (Red)", "3Rnd_UGL_FlareRed_F", 50],
	["40mm 3Rnd Flares (IR)", "3Rnd_UGL_FlareCIR_F", 50]
];

//Gun Store item List
//Text name, classname, buy cost, item class
accessoriesArray = compileFinal str
[
	["TGPA (Suppressor)", "rhs_acc_tgpa", 150, "item"],
	["Suppressor M2010S", "rhsusf_acc_M2010S", 150, "item"],
	["PBS4 Suppressor(5.45x39)", "hlc_muzzle_545SUP_AK", 150, "item"],
	["PBS1 Suppressor(7.62x39)", "hlc_muzzle_762SUP_AK", 150, "item"],
	["FAL Suppressor", "hlc_muzzle_snds_fal", 150, "item"],
	["HK53/33 Suppressor)", "hlc_muzzle_snds_HK33", 150, "item"],
	["G3 Suppressor(PSG excluded)", "hlc_muzzle_snds_G3", 150, "item"],
	["M14 Suppressor", "hlc_muzzle_snds_M14", 150, "item"],
	["HLC 556 Suppressor", "hlc_muzzle_556NATO_KAC", 150, "item"],
	[".300 Blackout AR15 Suppressor", "hlc_muzzle_300blk_KAC", 150, "item"],
	["9x19mm Mp5s EXCEPT MP5k/MP5k-pdw", "hlc_muzzle_Agendasix", 150, "item"],
	["all 9x19mm Mp5s", "hlc_muzzle_Tundra", 150, "item"],
	["MP5/10", "hlc_muzzle_Agendasix10mm", 150, "item"],
	["AAC M4-2000 Steyr", "hlc_muzzle_snds_AUG", 150, "item"],
	["AWC Agenda Six Steyr 9mm", "hlc_muzzle_snds_a6AUG", 150, "item"],
	["1P29", "rhs_acc_1p29", 150, "item"],
	["1P63", "rhs_acc_1p63", 150, "item"],
	["1PN93-1 (Night vision)", "rhs_acc_1pn93_1", 200, "item"],
	["1PN93-2 (Night vision - RPG)", "rhs_acc_1pn93_2", 200, "item"],
	["EKP-1 Kobra", "rhs_acc_ekp1", 75, "item"],
	["PGO-7V (RPG optic)", "rhs_acc_pgo7v", 150, "item"],
	["PK-AS (Reflex)", "rhs_acc_pkas", 75, "item"],
	["PSO-1M2 (4x24 tele)", "rhs_acc_pso1m2", 250, "item"],
	["AN PEQ-15", "rhsusf_acc_anpeq15", 25, "item"],
	["AN PEQ-15A", "rhsusf_acc_anpeq15A", 25, "item"],
	["AN PEQ-15 M952V(Light)", "rhsusf_acc_anpeq15_light", 25, "item"],
	["EOtech XPS3", "rhsusf_acc_EOTECH", 75, "item"],
	["Leupold Mk4 (3.5-10x40mm)", "rhsusf_acc_LEUPOLDMK4", 250, "item"],
	["Leupold Mk4 (6.5-20x50mm)", "rhsusf_acc_LEUPOLDMK4_2", 250, "item"],
	["M145 MGO Elcan", "rhsusf_acc_ELCAN", 150, "item"],
	["M150 RCO ACOG", "rhsusf_acc_ACOG", 150, "item"],
	["M150 RCO ACOG (ARD) ", "rhsusf_acc_ACOG2", 150, "item"],
	["M150 RCO ACOG (ARD/Lens Cover)", "rhsusf_acc_ACOG3", 150, "item"],
	["M68 CCO Aimpoint M4", "rhsusf_acc_compm4", 75, "item"],
	["PSO1 Sniper Optic", "HLC_Optic_PSO1", 200, "item"],
	["1P29 Rifle Combat Optic", "HLC_Optic_1p29", 150, "item"],
	["Kobra Collimator Sight", "hlc_optic_kobra", 75, "item"],
	["AN/PVS4 Night Optic(FALs)", "hlc_optic_PVS4FAL", 200, "item"],
	["SUIT Optic (Trilux FALs)", "hlc_optic_suit", 150, "item"],
	["Zeiss Diavari 6x Optic", "HLC_Optic_ZFSG1", 175, "item"],
	["Accupoint TR20(G3)optic", "hlc_optic_accupoint_g3", 150, "item"],
	["Redfield AR-TEL Optic(3-9x)", "hlc_optic_artel_m14", 200, "item"],
	["Leupold LR/T (LRPS)", "hlc_optic_LRT_m14", 200, "item"],
//LEGACY
	["Suppressor 9mm", "muzzle_snds_L", 150, "item"],
	["Suppressor .45 ACP", "muzzle_snds_acp", 150, "item"],
	["Suppressor 5.56mm", "muzzle_snds_M", 150, "item"],
	["Suppressor 6.5mm", "muzzle_snds_H", 150, "item"],
	["Suppressor 6.5mm LMG", "muzzle_snds_H_MG", 150, "item"],
	["Suppressor 7.62mm", "muzzle_snds_B", 150, "item"],
	["Flashlight", "acc_flashlight", 25, "item"],
	["IR Laser Pointer", "acc_pointer_IR", 25, "item"],
	["Yorris Sight (Zubr Revolver)", "optic_Yorris", 50, "item"],
	["MRD Sight (4-Five Pistol)", "optic_MRD", 50, "item"],
	["ACO (CQB)", "optic_aco_smg", 50, "item"],
	["Holosight (CQB)", "optic_Holosight_smg", 50, "item"],
	["ACO (Red)", "optic_Aco", 50, "item"],
	["ACO (Green)", "optic_Aco_grn", 50, "item"],
	["Holosight", "optic_Holosight", 50, "item"],
	["MRCO", "optic_MRCO", 50, "item"],
	["ARCO", "optic_Arco", 50, "item"],
	["RCO", "optic_Hamr", 500, "item"],
	["DMS", "optic_DMS", 500, "item"],
	["LRPS", "optic_LRPS", 500, "item"],
	["SOS", "optic_SOS", 500, "item"],
	["NVS", "optic_NVS", 1000, "item"]
];

// If commented, means the color/camo isn't implemented or is a duplicate of another hat
headArray = compileFinal str
[
//AFRF
	["6B27M Plain", "rhs_6b27m_green", 50, "hat"],
	["6B27M", "rhs_6b27m_green_ess", 50, "hat"],
	["6B27M", "rhs_6b27m_green_bala", 50, "hat"],
	["6B27M", "rhs_6b27m_green_ess_bala", 50, "hat"],
	["6B27M Flora", "rhs_6b27m", 50, "hat"],
	["6B27M", "rhs_6b27m_ess", 50, "hat"],
	["6B27M", "rhs_6b27m_bala", 50, "hat"],
	["6B27M", "rhs_6b27m_ess_bala", 50, "hat"],
	["6B27M EMR-Summer", "rhs_6b27m_digi", 50, "hat"],
	["6B27M", "rhs_6b27m_digi_bala", 50, "hat"],
	["6B27M Mountain", "rhs_6b27m_ml", 50, "hat"],
	["6B28", "rhs_6b28_green", 50, "hat"],
	["6B28", "rhs_6b28_green_ess", 50, "hat"],
	["6B28", "rhs_6b28_green_bala", 50, "hat"],
	["6B28", "rhs_6b28_green_ess_bala", 50, "hat"],
	["6B28 EMR-Summer", "rhs_6b28", 50, "hat"],
	["6B28", "rhs_6b28_ess", 50, "hat"],
	["6B28", "rhs_6b28_bala", 50, "hat"],
	["6B28", "rhs_6b28_ess_bala", 50, "hat"],
	["6B28 Flora", "rhs_6b28_flora", 50, "hat"],
	["6B28", "rhs_6b28_flora_ess", 50, "hat"],
	["6B28", "rhs_6b28_flora_bala", 50, "hat"],
	["6B28", "rhs_6b28_ess_bala", 50, "hat"],
	["Boonie Flora", "rhs_Booniehat_flora", 50, "hat"],
	["Boonie EMR-Summer", "rhs_Booniehat_digi", 50, "hat"],
	["Field Cap", "rhs_fieldcap", 50, "hat"],
	["Field Cap Helmet", "rhs_fieldcap_helm", 50, "hat"],
	["Field Cap Helmet", "rhs_fieldcap_helm_digi", 50, "hat"],
	["Tank Helmet TSh-4", "rhs_tsh4", 50, "hat"],
	["Tank Helmet TSh-4", "rhs_tsh4_ess", 50, "hat"],
	["Tank Helmet TSh-4", "rhs_tsh4_bala", 50, "hat"],
	["Tank Helmet TSh-4", "rhs_tsh4_ess_bala", 50, "hat"],
	["Pilot Helmet ZSh-7A", "rhs_zsh7a_mike", 50, "hat"],
	["Pilot Helmet ZSh-7A", "rhs_zsh7a", 50, "hat"],
	["AFRF Balaclava", "rhs_balaclava", 50, "hat"],
	["AFRF Scarf", "rhs_scarf", 50, "hat"],
//USAF
	["ACH", "rhsusf_ach_bare", 50, "hat"],
	["ACH ESS", "rhsusf_ach_bare_ess", 50, "hat"],
	["ACH Headset", "rhsusf_ach_bare_headset", 50, "hat"],
	["ACH Headset ESS", "rhsusf_ach_bare_headset_ess", 50, "hat"],
	["M81", "rhsusf_ach_helmet_m81", 50, "hat"],
	["Ops-Core 1", "rhsusf_opscore_01", 50, "hat"],
	["Ops-Core 2", "rhsusf_opscore_02", 50, "hat"],
	["Booniehat UCP", "rhs_Booniehat_ucp", 50, "hat"],
	["Booniehat OCP", "rhs_Booniehat_ocp", 50, "hat"],
	["Patrol Cap UCP", "rhsusf_patrolcap_ucp", 50, "hat"],
	["Patrol Cap OCP", "rhsusf_patrolcap_ocp", 50, "hat"],
	["Tank Helmet CVC", "rhsusf_cvc_green_helmet", 50, "hat"],
	["Tank Helmet CVC ESS", "rhsusf_cvc_green_ess", 50, "hat"],
	["Pilot HGU-56P", "H_PilotHelmetHeli_B", 50, "hat"],
	["Crew HGU-56P", "H_CrewHelmetHeli_B", 50, "hat"]
];

uniformArray = compileFinal str
[
//AFRF
	["AFRF Flora", "rhs_uniform_flora", 300, "uni"],
	["AFRF Flora", "rhs_uniform_vdv_flora", 300, "uni"],
	["AFRF Flora", "rhs_uniform_flora_patchless", 300, "uni"],
	["AFRF Mountain", "rhs_uniform_vdv_mflora", 300, "uni"],
	["AFRF Mountain", "rhs_uniform_mflora_patchless", 300, "uni"],
	["AFRF EMR-Summer", "rhs_uniform_msv_emr", 300, "uni"],
	["AFRF EMR-Summer", "rhs_uniform_vdv_emr", 300, "uni"],
	["AFRF EMR-Summer", "rhs_uniform_emr_patchless", 300, "uni"],
	["AFRF Pilot", "rhs_uniform_df15", 300, "uni"],
	["Guerilla Smocks 1", "U_OG_Guerilla1_1", 25, "uni"], // OPFOR
	["Guerilla Smocks 2", "U_OG_Guerilla2_1", 25, "uni"],
	["Guerilla Smocks 3", "U_OG_Guerilla2_2", 25, "uni"],
	["Guerilla Smocks 4", "U_OG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks 5", "U_OG_Guerilla3_1", 25, "uni"],
	["Guerilla Smocks 6", "U_OG_Guerilla3_2", 25, "uni"],
	["Guerilla Smocks 7", "U_OG_leader", 25, "uni"],
//USAF
	["USAF UCP", "rhs_uniform_cu_ucp", 300, "uni"],
	["USAF UCP patchless", "rhs_uniform_cu_ocp_patchless", 300, "uni"],
	["USAF OCP", "rhs_uniform_cu_ucp", 300, "uni"],
	["USAF OCP patchless", "rhs_uniform_cu_ucp_patchless", 300, "uni"],
	["Guerilla Smocks 1", "U_BG_Guerilla1_1", 25, "uni"], // BLUFOR
	["Guerilla Smocks 2", "U_BG_Guerilla2_1", 25, "uni"],
	["Guerilla Smocks 3", "U_BG_Guerilla2_2", 25, "uni"],
	["Guerilla Smocks 4", "U_BG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks 5", "U_BG_Guerilla3_1", 25, "uni"],
	["Guerilla Smocks 6", "U_BG_Guerilla3_2", 25, "uni"],
	["Guerilla Smocks 7", "U_BG_leader", 25, "uni"],
//INDIE
	["Ghillie Suit (AAF)", "U_I_GhillieSuit", 300, "uni"],
	["Wetsuit (AAF)", "U_I_Wetsuit", 200, "uni"],
	["Default Uniform (AAF)", "U_I_CombatUniform", 50, "uni"],
	["Combat Fatigues Short (Digi)", "U_I_CombatUniform_shortsleeve", 50, "uni"],
	["Combat Fatigues Shirt (Digi)", "U_I_CombatUniform_tshirt", 50, "uni"],
	["Officer Fatigues (Digi)", "U_I_OfficerUniform", 50, "uni"],
	["Pilot Coveralls (AAF)", "U_I_pilotCoveralls", 50, "uni"],
	["Heli Pilot Coveralls (AAF)", "U_I_HeliPilotCoveralls", 50, "uni"],
	["Guerilla Smocks 1", "U_IG_Guerilla1_1", 25, "uni"], // Independent
	["Guerilla Smocks 2", "U_IG_Guerilla2_1", 25, "uni"],
	["Guerilla Smocks 3", "U_IG_Guerilla2_2", 25, "uni"],
	["Guerilla Smocks 4", "U_IG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks 5", "U_IG_Guerilla3_1", 25, "uni"],
	["Guerilla Smocks 6", "U_IG_Guerilla3_2", 25, "uni"],
	["Guerilla Smocks 7", "U_IG_leader", 25, "uni"]
];

vestArray = compileFinal str
[
//AFRF
	["EMR 6B23", "rhs_6b23_digi", 200, "vest"],
	["EMR Crew", "rhs_6b23_digi_crew", 200, "vest"],
	["EMR Crew officer", "rhs_6b23_digi_crewofficer", 200, "vest"],
	["EMR Engineer", "rhs_6b23_digi_engineer", 200, "vest"],
	["EMR Medic", "rhs_6b23_digi_medic", 200, "vest"],
	["EMR Rifleman", "rhs_6b23_digi_rifleman", 200, "vest"],
	["EMR Sniper", "rhs_6b23_digi_sniper", 200, "vest"],
	["EMR 6Sh-92", "rhs_6b23_digi_6sh92", 200, "vest"],
	["EMR 6Sh-92 Radio", "rhs_6b23_digi_6sh92_radio", 200, "vest"],
	["EMR 6Sh-92 Vog", "rhs_6b23_digi_6sh92_vog", 200, "vest"],
	["EMR 6Sh-92 Vog headset", "rhs_6b23_digi_6sh92_vog_headset", 200, "vest"],
	["EMR 6Sh-92 headset", "rhs_6b23_digi_6sh92_headset", 200, "vest"],
	["EMR 6Sh-92 headset map", "rhs_6b23_digi_6sh92_headset_mapcase", 200, "vest"],
	["Flora 6B23", "rhs_6b23", 200, "vest"],
	["Flora Crew", "rhs_6b23_crew", 200, "vest"],
	["Flora Crew officer", "rhs_6b23_crewofficer", 200, "vest"],
	["Flora Engineer", "rhs_6b23_engineer", 200, "vest"],
	["Flora Medic", "rhs_6b23_medic", 200, "vest"],
	["Flora Rifleman", "rhs_6b23_rifleman", 200, "vest"],
	["Flora Sniper", "rhs_6b23_sniper", 200, "vest"],
	["Flora 6Sh-92", "rhs_6b23_6sh92", 200, "vest"],
	["Flora 6Sh-92 Radio", "rhs_6b23_6sh92_radio", 200, "vest"],
	["Flora 6Sh-92 Vog", "rhs_6b23_6sh92_vog", 200, "vest"],
	["Flora 6Sh-92 Vog headset", "rhs_6b23_6sh92_vog_headset", 200, "vest"],
	["Flora 6Sh-92 headset", "rhs_6b23_6sh92_headset", 200, "vest"],
	["Flora 6Sh-92 headset map", "rhs_6b23_6sh92_headset_mapcase", 200, "vest"],
	["Mountain 6B23", "rhs_6b23_ML", 200, "vest"],
	["Mountain Crew", "rhs_6b23_ML_crew", 200, "vest"],
	["Mountain Crew officer", "rhs_6b23_ML_crewofficer", 200, "vest"],
	["Mountain Engineer", "rhs_6b23_ML_engineer", 200, "vest"],
	["Mountain Medic", "rhs_6b23_ML_medic", 200, "vest"],
	["Mountain Rifleman", "rhs_6b23_ML_rifleman", 200, "vest"],
	["Mountain Sniper", "	rhs_6b23_ML_sniper", 200, "vest"],
	["Mountain 6Sh-92", "	rhs_6b23_ML_6sh92", 200, "vest"],
	["Mountain 6Sh-92 Radio", "rhs_6b23_ML_6sh92_radio", 200, "vest"],
	["Mountain 6Sh-92 Vog", "rhs_6b23_ML_6sh92_vog", 200, "vest"],
	["Mountain 6Sh-92 Vog headset", "rhs_6b23_ML_6sh92_vog_headset", 200, "vest"],
	["Mountain 6Sh-92 headset", "rhs_6b23_ML_6sh92_headset", 200, "vest"],
	["Mountain 6Sh-92 headset map", "rhs_6b23_ML_6sh92_headset_mapcase", 200, "vest"],
	["6Sh46", "rhs_6sh46", 200, "vest"],
	["Holster and map", "rhs_vest_commander", 200, "vest"],
	["Vydra 3M", "rhs_vydra_3m", 200, "vest"],
	["Rebreather (CSAT)", "V_RebreatherIR", 200, "vest"],
//USAF
	["IOTV UCP", "rhsusf_iotv_ucp", 200, "vest"],
	["IOTV UCP Grenadier", "rhsusf_iotv_ucp_grenadier", 200, "vest"],
	["IOTV UCP Medic", "rhsusf_iotv_ucp_medic", 200, "vest"],
	["IOTV UCP Repair", "rhsusf_iotv_ucp_repair", 200, "vest"],
	["IOTV UCP Rifleman", "rhsusf_iotv_ucp_rifleman", 200, "vest"],
	["IOTV UCP SAW", "rhsusf_iotv_ucp_SAW", 200, "vest"],
	["IOTV UCP Squad Leader", "rhsusf_iotv_ucp_squadleader", 200, "vest"],
	["IOTV UCP Team Leader", "rhsusf_iotv_ucp_teamleader", 200, "vest"],
	["IOTV OCP", "rhsusf_iotv_ocp", 200, "vest"],
	["IOTV OCP Grenadier", "rhsusf_iotv_ocp_grenadier", 200, "vest"],
	["IOTV OCP Medic", "rhsusf_iotv_ocp_medic", 200, "vest"],
	["IOTV OCP Repair", "rhsusf_iotv_ocp_repair", 200, "vest"],
	["IOTV OCP Rifleman", "rhsusf_iotv_ocp_rifleman", 200, "vest"],
	["IOTV OCP SAW", "rhsusf_iotv_ocp_SAW", 200, "vest"],
	["IOTV OCP Squad Leader", "rhsusf_iotv_ocp_squadleader", 200, "vest"],
	["IOTV OCP Team Leader", "rhsusf_iotv_ocp_teamleader", 200, "vest"],
	["Rebreather (NATO)", "V_RebreatherB", 200, "vest"],
//INDIE
	["Rebreather (AAF)", "V_RebreatherIA", 200, "vest"]
];

backpackArray = compileFinal str
[
	["Sidor", "rhs_sidor", 250, "backpack"],
	["Assault UMBTS", "rhs_assault_umbts", 350, "backpack"],
	["Falcon-II", "rhsusf_falconii", 250, "backpack"],
	["Eagle A-III UCP", "rhsusf_assault_eagleaiii_ucp", 350, "backpack"],
	["Eagle A-III OCP", "rhsusf_assault_eagleaiii_ocp", 350, "backpack"],
	//["Parachute", "B_Parachute", 200, "backpack"],

	["Assault Pack (Black)", "B_AssaultPack_blk", 150, "backpack"],
	["Assault Pack (Green)", "B_AssaultPack_rgr", 150, "backpack"],
	["Assault Pack (MTP)", "B_AssaultPack_mcamo", 150, "backpack"],
	["Assault Pack (Hex)", "B_AssaultPack_ocamo", 150, "backpack"],

	["Field Pack (Black)", "B_FieldPack_blk", 200, "backpack"],
	["Field Pack (Coyote)", "B_FieldPack_cbr", 200, "backpack"],
	["Field Pack (Khaki)", "B_FieldPack_khk", 200, "backpack"],
	["Field Pack (Urban)", "B_FieldPack_oucamo", 200, "backpack"],

	["Kitbag (Coyote)", "B_Kitbag_cbr", 350, "backpack"],
	["Kitbag (Green)", "B_Kitbag_rgr", 350, "backpack"],
	["Kitbag (MTP)", "B_Kitbag_mcamo", 350, "backpack"],
	["Kitbag (Sage)", "B_Kitbag_sgg", 350, "backpack"],

	["Bergen (Black)", "B_Bergen_blk", 350, "backpack"],
	["Bergen (Green)", "B_Bergen_rgr", 350, "backpack"],
	["Bergen (MTP)", "B_Bergen_mcamo", 350, "backpack"],
	["Bergen (Sage)", "B_Bergen_sgg", 350, "backpack"],

	["Carryall (Khaki)", "B_Carryall_khk", 500, "backpack"],
	["Carryall (MTP)", "B_Carryall_mcamo", 500, "backpack"],
	["Carryall (Olive)", "B_Carryall_oli", 500, "backpack"],
	["Carryall (Urban)", "B_Carryall_oucamo", 500, "backpack"]
];

genItemArray = compileFinal str
[
	["GPS", "ItemGPS", 100, "gps"],
	["First Aid Kit", "FirstAidKit", 25, "item"],
	["Medikit", "Medikit", 150, "item"],
	["Toolkit", "ToolKit", 150, "item"],
	["Mine Detector", "MineDetector", 100, "item"],
	["NV Goggles", "NVGoggles", 100, "nvg"],
	["NV AN PVS-14", "rhsusf_ANPVS_14", 100, "nvg"],
	["NV AN PVS-15", "rhsusf_ANPVS_15", 100, "nvg"],
	["Diving Goggles", "G_Diving", 100, "gogg"],
	["Binoculars", "Binocular", 50, "binoc"],
	["Rangefinder", "Rangefinder", 150, "binoc"],
	["Laser Designator", "Laserdesignator", 1000, "binoc"],
	["Chemlight (Blue)", "Chemlight_blue", 25, "mag"],
	["Chemlight (Green)", "Chemlight_green", 25, "mag"],
	["Chemlight (Yellow)", "Chemlight_yellow", 25, "mag"],
	["Chemlight (Red)", "Chemlight_red", 25, "mag"]
];

allStoreMagazines = compileFinal str (call ammoArray + call throwputArray + call genItemArray);
allRegularStoreItems = compileFinal str (call allGunStoreFirearms + call allStoreMagazines + call accessoriesArray);
allStoreGear = compileFinal str (call headArray + call uniformArray + call vestArray + call backpackArray);

genObjectsArray = compileFinal str
[
	["Empty Ammo Crate", "Box_NATO_Ammo_F", 200, "ammocrate"],
	//["Metal Barrel", "Land_MetalBarrel_F", 25, "object"],
	["Toilet Box", "Land_ToiletBox_F", 25, "object"],
	["Lamp Post (Harbour)", "Land_LampHarbour_F", 100, "object"],
	["Lamp Post (Shabby)", "Land_LampShabby_F", 100, "object"],
	["Boom Gate", "Land_BarGate_F", 150, "object"],
	["Pipes", "Land_Pipes_Large_F", 200, "object"],
	["Concrete Frame", "Land_CncShelter_F", 200, "object"],
	["Highway Guardrail", "Land_Crash_barrier_F", 200, "object"],
	["Concrete Barrier", "Land_CncBarrier_F", 200, "object"],
	["Concrete Barrier (Medium)", "Land_CncBarrierMedium_F", 350, "object"],
	["Concrete Barrier (Long)", "Land_CncBarrierMedium4_F", 500, "object"],
	["HBarrier (1 block)", "Land_HBarrier_1_F", 150, "object"],
	["HBarrier (3 blocks)", "Land_HBarrier_3_F", 200, "object"],
	["HBarrier (5 blocks)", "Land_HBarrier_5_F", 250, "object"],
	["HBarrier Big", "Land_HBarrierBig_F", 500, "object"],
	["HBarrier Wall (4 blocks)", "Land_HBarrierWall4_F", 400, "object"],
	["HBarrier Wall (6 blocks)", "Land_HBarrierWall6_F", 500, "object"],
	["HBarrier Watchtower", "Land_HBarrierTower_F", 600, "object"],
	["Concrete Wall", "Land_CncWall1_F", 400, "object"],
	["Concrete Military Wall", "Land_Mil_ConcreteWall_F", 400, "object"],
	["Concrete Wall (Long)", "Land_CncWall4_F", 600, "object"],
	["Military Wall (Big)", "Land_Mil_WallBig_4m_F", 600, "object"],
	//["Shoot House Wall", "Land_Shoot_House_Wall_F", 180, "object"],
	["Canal Wall (Small)", "Land_Canal_WallSmall_10m_F", 400, "object"],
	["Canal Stairs", "Land_Canal_Wall_Stairs_F", 500, "object"],
	["Bag Fence (Corner)", "Land_BagFence_Corner_F", 150, "object"],
	["Bag Fence (End)", "Land_BagFence_End_F", 150, "object"],
	["Bag Fence (Long)", "Land_BagFence_Long_F", 200, "object"],
	["Bag Fence (Round)", "Land_BagFence_Round_F", 150, "object"],
	["Bag Fence (Short)", "Land_BagFence_Short_F", 150, "object"],
	["Bag Bunker (Small)", "Land_BagBunker_Small_F", 250, "object"],
	["Bag Bunker (Large)", "Land_BagBunker_Large_F", 500, "object"],
	["Bag Bunker Tower", "Land_BagBunker_Tower_F", 1000, "object"],
	["Military Cargo Post", "Land_Cargo_Patrol_V1_F", 800, "object"],
	["Military Cargo Tower", "Land_Cargo_Tower_V1_F", 10000, "object"],
	["Concrete Ramp", "Land_RampConcrete_F", 350, "object"],
	["Concrete Ramp (High)", "Land_RampConcreteHigh_F", 500, "object"],
	["Scaffolding", "Land_Scaffolding_F", 250, "object"]
];

allGenStoreVanillaItems = compileFinal str (call genItemArray + call genObjectsArray + call allStoreGear);

//Text name, classname, buy cost, spawn type, sell price (selling not implemented) or spawning color
landArray = compileFinal str
[
	["Kart", "C_Kart_01_F", 500, "vehicle"],

	["Quadbike (Civilian)", "C_Quadbike_01_F", 600, "vehicle"],
	["Quadbike (NATO)", "B_Quadbike_01_F", 650, "vehicle"],
	["Quadbike (CSAT)", "O_Quadbike_01_F", 650, "vehicle"],
	["Quadbike (AAF)", "I_Quadbike_01_F", 650, "vehicle"],
	["Quadbike (FIA)", "B_G_Quadbike_01_F", 650, "vehicle"],

	["Hatchback", "C_Hatchback_01_F", 800, "vehicle"],
	["Hatchback Sport", "C_Hatchback_01_sport_F", 1000, "vehicle"],
	["SUV", "C_SUV_01_F", 1100, "vehicle"],
	["Offroad", "C_Offroad_01_F", 1100, "vehicle"],
	["Offroad Camo", "B_G_Offroad_01_F", 1250, "vehicle"],
	["Offroad Repair", "C_Offroad_01_repair_F", 1500, "vehicle"],
	["Offroad HMG", "B_G_Offroad_01_armed_F", 2500, "vehicle"],

	["Truck", "C_Van_01_transport_F", 700, "vehicle"],
	["Truck (Camo)", "B_G_Van_01_transport_F", 800, "vehicle"],
	["Truck Box", "C_Van_01_box_F", 900, "vehicle"],
	["Fuel Truck", "C_Van_01_fuel_F", 2000, "vehicle"],
	["Fuel Truck (Camo)", "B_G_Van_01_fuel_F", 2100, "vehicle"],

	["HEMTT Tractor", "B_Truck_01_mover_F", 4000, "vehicle"],
	["HEMTT Box", "B_Truck_01_box_F", 5000, "vehicle"],
	["HEMTT Transport", "B_Truck_01_transport_F", 6000, "vehicle"],
	["HEMTT Covered", "B_Truck_01_covered_F", 7500, "vehicle"],
	["HEMTT Fuel", "B_Truck_01_fuel_F", 9000, "vehicle"],
	["HEMTT Medical", "B_Truck_01_medical_F", 10000, "vehicle"],
	["HEMTT Repair", "B_Truck_01_Repair_F", 12500, "vehicle"],
	["HEMTT Ammo", "B_Truck_01_ammo_F", 27500, "vehicle"],

	["Tempest Device", "O_Truck_03_device_F", 4000, "vehicle"],
	["Tempest Transport", "O_Truck_03_transport_F", 6000, "vehicle"],
	["Tempest Covered", "O_Truck_03_covered_F", 7500, "vehicle"],
	["Tempest Fuel", "O_Truck_03_fuel_F", 9000, "vehicle"],
	["Tempest Medical", "O_Truck_03_medical_F", 10000, "vehicle"],
	["Tempest Repair", "O_Truck_03_repair_F", 12500, "vehicle"],
	["Tempest Ammo", "O_Truck_03_ammo_F", 27500, "vehicle"],

	["Zamak Transport", "I_Truck_02_transport_F", 4000, "vehicle"],
	["Zamak Covered", "I_Truck_02_covered_F", 5000, "vehicle"],
	["Zamak Fuel", "I_Truck_02_fuel_F", 7500, "vehicle"],
	["Zamak Medical", "I_Truck_02_medical_F", 9000, "vehicle"],
	["Zamak Repair", "I_Truck_02_box_F", 10000, "vehicle"],
	["Zamak Ammo", "I_Truck_02_ammo_F", 25000, "vehicle"],

	["UGV Stomper (NATO)", "B_UGV_01_F", 2500, "vehicle"],
	["UGV Stomper RCWS (NATO)", "B_UGV_01_rcws_F", 15000, "vehicle"],
	["UGV Stomper (AAF)", "I_UGV_01_F", 2500, "vehicle"],
	["UGV Stomper RCWS (AAF)", "I_UGV_01_rcws_F", 15000, "vehicle"],
	["UGV Saif (CSAT)", "O_UGV_01_F", 2500, "vehicle"],
	["UGV Saif RCWS (CSAT)", "O_UGV_01_rcws_F", 15000, "vehicle"]
];

armoredArray = compileFinal str
[
	["Hunter", "B_MRAP_01_F", 4000, "vehicle"],
	["Hunter HMG", "B_MRAP_01_hmg_F", 15000, "vehicle"],
	["Hunter GMG", "B_MRAP_01_gmg_F", 17500, "vehicle"],
	["Ifrit", "O_MRAP_02_F", 4000, "vehicle"],
	["Ifrit HMG", "O_MRAP_02_hmg_F", 15000, "vehicle"],
	["Ifrit GMG", "O_MRAP_02_gmg_F", 17500, "vehicle"],
	["Strider", "I_MRAP_03_F", 4000, "vehicle"],
	["Strider HMG", "I_MRAP_03_hmg_F", 15000, "vehicle"],
	["Strider GMG", "I_MRAP_03_gmg_F", 17500, "vehicle"],
	["MSE-3 Marid", "O_APC_Wheeled_02_rcws_F", 22500, "vehicle"],
	["AMV-7 Marshall", "B_APC_Wheeled_01_cannon_F", 27500, "vehicle"],
	["AFV-4 Gorgon", "I_APC_Wheeled_03_cannon_F", 30000, "vehicle"]
];

tanksArray = compileFinal str
[
	["CRV-6e Bobcat", "B_APC_Tracked_01_CRV_F", 32500, "vehicle"],
	["IFV-6c Panther", "B_APC_Tracked_01_rcws_F", 35000, "vehicle"],
	["FV-720 Mora", "I_APC_tracked_03_cannon_F", 37500, "vehicle"],
	["BTR-K Kamysh", "O_APC_Tracked_02_cannon_F", 40000, "vehicle"],
	["IFV-6a Cheetah AA", "B_APC_Tracked_01_AA_F", 40000, "vehicle"],
	["ZSU-39 Tigris AA", "O_APC_Tracked_02_AA_F", 40000, "vehicle"],
	["M2A1 Slammer", "B_MBT_01_cannon_F", 50000, "vehicle"],
	["M2A4 Slammer HMG", "B_MBT_01_TUSK_F", 50000, "vehicle"], // Commander gun variant
	["T-100 Varsuk", "O_MBT_02_cannon_F", 50000, "vehicle"],
	["MBT-52 Kuma", "I_MBT_03_cannon_F", 50000, "vehicle"]
];


helicoptersArray = compileFinal str
[
	["M-900 Civilian", "C_Heli_Light_01_civil_F", 4000, "vehicle"], // MH-6, no flares
	["MH-9 Hummingbird", "B_Heli_Light_01_F", 5000, "vehicle"], // MH-6
	["PO-30 Orca (Black)", "O_Heli_Light_02_unarmed_F", 7000, "vehicle"], // Ka-60
	["WY-55 Hellcat (Green)", "I_Heli_light_03_unarmed_F", 7000, "vehicle"], // AW159

	["Mi-290 Taru (Crane) [DLC]", "O_Heli_Transport_04_F", 7500, "vehicle"], // CH-54
	["Mi-290 Taru (Box) [DLC]", "O_Heli_Transport_04_box_F", 8000, "vehicle"],
	["Mi-290 Taru (Fuel) [DLC]", "O_Heli_Transport_04_fuel_F", 8500, "vehicle"],
	["Mi-290 Taru (Bench) [DLC]", "O_Heli_Transport_04_bench_F", 9000, "vehicle"],
	["Mi-290 Taru (Transport) [DLC]", "O_Heli_Transport_04_covered_F", 9500, "vehicle"],
	["CH-67 Huron (Black) [DLC]", "B_Heli_Transport_03_unarmed_F", 10000, "vehicle"], // CH-47
	["CH-49 Mohawk", "I_Heli_Transport_02_F", 10000, "vehicle"], // AW101

	["Mi-290 Taru (Medical) [DLC]", "O_Heli_Transport_04_medevac_F",12500, "vehicle"],
	["Mi-290 Taru (Repair) [DLC]", "O_Heli_Transport_04_repair_F", 15000, "vehicle"],
	["Mi-290 Taru (Ammo) [DLC]", "O_Heli_Transport_04_ammo_F", 25000, "vehicle"],

	["UH-80 Ghost Hawk (Black)", "B_Heli_Transport_01_F", 25000, "vehicle"], // UH-60 Stealth with 2 side miniguns
	["UH-80 Ghost Hawk (Green)", "B_Heli_Transport_01_camo_F", 25000, "vehicle"], // UH-60 Stealth with 2 side miniguns (green camo)
	["CH-67 Huron (Armed) [DLC]", "B_Heli_Transport_03_F", 30000, "vehicle"], // CH-47 with 2 side miniguns
	["AH-9 Pawnee", "B_Heli_Light_01_armed_F", 30000, "vehicle"], // Armed AH-6
	["PO-30 Orca (Armed, Black)", "O_Heli_Light_02_v2_F", 30000, "vehicle"], // Armed Ka-60 with orca paintjob
	["PO-30 Orca (Armed, Hex)", "O_Heli_Light_02_F", 35000, "vehicle"], // Armed Ka-60
	["WY-55 Hellcat (Armed)", "I_Heli_light_03_F", 40000, "vehicle"], // Armed AW159
	["AH-99 Blackfoot", "B_Heli_Attack_01_F", 50000, "vehicle"], // RAH-66 with gunner
	["Mi-48 Kajman (Hex)", "O_Heli_Attack_02_F", 60000, "vehicle"], // Mi-28 with gunner
	["Mi-48 Kajman (Black)", "O_Heli_Attack_02_black_F", 60000, "vehicle"] // Mi-28 with gunner (black camo)
];

planesArray = compileFinal str
[
	["A-143 Buzzard AA", "I_Plane_Fighter_03_AA_F", 40000, "vehicle"],
	["A-143 Buzzard CAS", "I_Plane_Fighter_03_CAS_F", 45000, "vehicle"],
	["A-164 Wipeout CAS", "B_Plane_CAS_01_F", 60000, "vehicle"],
	["To-199 Neophron CAS", "O_Plane_CAS_02_F", 60000, "vehicle"],
	["MQ4A Greyhawk ATGM UAV", "B_UAV_02_F", 20000, "vehicle"],
	["MQ4A Greyhawk Bomber UAV", "B_UAV_02_CAS_F", 10000, "vehicle"], // Bomber UAVs are a lot harder to use, hence why they are cheaper than ATGMs
	["K40 Ababil-3 ATGM UAV (CSAT)", "O_UAV_02_F", 20000, "vehicle"],
	["K40 Ababil-3 Bomber UAV (CSAT)", "O_UAV_02_CAS_F", 10000, "vehicle"],
	["K40 Ababil-3 ATGM UAV (AAF)", "I_UAV_02_F", 20000, "vehicle"],
	["K40 Ababil-3 Bomber UAV (AAF)", "I_UAV_02_CAS_F", 10000, "vehicle"]
];

boatsArray = compileFinal str
[
	["Rescue Boat", "C_Rubberboat", 500, "boat"],
	["Rescue Boat (NATO)", "B_Lifeboat", 500, "boat"],
	["Rescue Boat (CSAT)", "O_Lifeboat", 500, "boat"],
	["Assault Boat (NATO)", "B_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (CSAT)", "O_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (AAF)", "I_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (FIA)", "B_G_Boat_Transport_01_F", 600, "boat"],
	["Motorboat", "C_Boat_Civil_01_F", 1000, "boat"],
	["Motorboat Rescue", "C_Boat_Civil_rescue_01_F", 900, "boat"],
	["Motorboat Police", "C_Boat_Civil_police_01_F", 1250, "boat"],
	["Speedboat HMG (CSAT)", "O_Boat_Armed_01_hmg_F", 4000, "boat"],
	["Speedboat Minigun (NATO)", "B_Boat_Armed_01_minigun_F", 4000, "boat"],
	["Speedboat Minigun (AAF)", "I_Boat_Armed_01_minigun_F", 4000, "boat"],
	["SDV Submarine (NATO)", "B_SDV_01_F", 1000, "submarine"],
	["SDV Submarine (CSAT)", "O_SDV_01_F", 1000, "submarine"],
	["SDV Submarine (AAF)", "I_SDV_01_F", 1000, "submarine"]
];

allVehStoreVehicles = compileFinal str (call landArray + call armoredArray + call tanksArray + call helicoptersArray + call planesArray + call boatsArray);

uavArray = compileFinal str
[
	"UAV_02_base_F",
	"UGV_01_base_F"
];

noColorVehicles = compileFinal str
[
	// Deprecated
];

rgbOnlyVehicles = compileFinal str
[
	// Deprecated
];

_color = "#(rgb,1,1,1)color";
_texDir = "client\images\vehicleTextures\";
_kartDir = "\A3\soft_f_kart\Kart_01\Data\";
_mh9Dir = "\A3\air_f\Heli_Light_01\Data\";
_mohawkDir = "\A3\air_f_beta\Heli_Transport_02\Data\";
_taruDir = "\A3\air_f_heli\Heli_Transport_04\Data\";

colorsArray = compileFinal str
[
	[ // Main colors
		"All",
		[
			["Black", _color + "(0.01,0.01,0.01,1)"], // #(argb,8,8,3)color(0.1,0.1,0.1,0.1)
			["Grey", _color + "(0.15,0.151,0.152,1)"], // #(argb,8,8,3)color(0.5,0.51,0.512,0.3)
			["White", _color + "(0.75,0.75,0.75,1)"], // #(argb,8,8,3)color(1,1,1,0.5)
			["Dark Blue", _color + "(0,0.05,0.15,1)"], // #(argb,8,8,3)color(0,0.3,0.6,0.05)
			["Blue", _color + "(0,0.03,0.5,1)"], // #(argb,8,8,3)color(0,0.2,1,0.75)
			["Teal", _color + "(0,0.3,0.3,1)"], // #(argb,8,8,3)color(0,1,1,0.15)
			["Green", _color + "(0,0.5,0,1)"], // #(argb,8,8,3)color(0,1,0,0.15)
			["Yellow", _color + "(0.5,0.4,0,1)"], // #(argb,8,8,3)color(1,0.8,0,0.4)
			["Orange", _color + "(0.4,0.09,0,1)"], // #(argb,8,8,3)color(1,0.5,0,0.4)
			["Red", _color + "(0.45,0.005,0,1)"], // #(argb,8,8,3)color(1,0.1,0,0.3)
			["Pink", _color + "(0.5,0.03,0.3,1)"], // #(argb,8,8,3)color(1,0.06,0.6,0.5)
			["Purple", _color + "(0.1,0,0.3,1)"], // #(argb,8,8,3)color(0.8,0,1,0.1)
			["NATO Tan", _texDir + "nato.jpg"], // #(argb,8,8,3)color(0.584,0.565,0.515,0.3)
			["CSAT Brown", _texDir + "csat.jpg"], // #(argb,8,8,3)color(0.624,0.512,0.368,0.3)
			["AAF Green", _texDir + "aaf.jpg"] // #(argb,8,8,3)color(0.546,0.59,0.363,0.2)
			// ["Trippy", _texDir + "rainbow.jpg"],
			// ["Carbon", _texDir + "carbon.jpg"],
			// ["Rusty", _texDir + "rusty.jpg"],
			// ["Denim", _texDir + "denim.jpg"],
			// ["Psych", _texDir + "psych.jpg"],
			// ["Leopard", _texDir + "leopard.jpg"],
			// ["Holland!", _texDir + "holland.jpg"], //GoT addition (dutch flag)
			// ["'Murica", _texDir + "murica.jpg"],
			// ["Confederate", _texDir + "confederate.jpg"],
			// ["Union Jack", _texDir + "unionjack.jpg"],
			// ["Yellow Camo", _texDir + "camo_fuel.jpg"],
			// ["Orange Camo", _texDir + "camo_fack.jpg"],
			// ["Red Camo", _texDir + "camo_deser.jpg"],
			// ["Pink Camo", _texDir + "camo_pank.jpg"]
		]
	],
	[ // Kart colors
		"Kart_01_Base_F",
		[
			["Black (Kart)", [[0, _kartDir + "kart_01_base_black_co.paa"]]],
			["White (Kart)", [[0, _kartDir + "kart_01_base_white_co.paa"]]],
			["Blue (Kart)", [[0, _kartDir + "kart_01_base_blue_co.paa"]]],
			["Green (Kart)", [[0, _kartDir + "kart_01_base_green_co.paa"]]],
			["Yellow (Kart)", [[0, _kartDir + "kart_01_base_yellow_co.paa"]]],
			["Orange (Kart)", [[0, _kartDir + "kart_01_base_orange_co.paa"]]],
			["Red (Kart)", [[0, _kartDir + "kart_01_base_red_co.paa"]]]
		]
	],
	[ // MH-9 colors
		"Heli_Light_01_base_F",
		[
			["AAF Camo (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_indp_co.paa"]]],
			["Blue 'n White (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_blue_co.paa"]]],
			["Blueline (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_blueline_co.paa"]]],
			["Cream Gravy (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_co.paa"]]],
			["Digital (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_digital_co.paa"]]],
			["Elliptical (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_elliptical_co.paa"]]],
			["Furious (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_furious_co.paa"]]],
			["Graywatcher (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_graywatcher_co.paa"]]],
			["ION (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_ion_co.paa"]]],
			["Jeans (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_jeans_co.paa"]]],
			["Light (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_light_co.paa"]]],
			["Shadow (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_shadow_co.paa"]]],
			["Sheriff (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_sheriff_co.paa"]]],
			["Speedy (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_speedy_co.paa"]]],
			["Sunset (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_sunset_co.paa"]]],
			["Vrana (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_vrana_co.paa"]]],
			["Wasp (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_wasp_co.paa"]]],
			["Wave (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_wave_co.paa"]]]
		]
	],
	[ // Mohawk colors
		"Heli_Transport_02_base_F",
		[
			["Dahoman (Mohawk)", [
				[0, _mohawkDir + "Skins\heli_transport_02_1_dahoman_co.paa"],
				[1, _mohawkDir + "Skins\heli_transport_02_2_dahoman_co.paa"],
				[2, _mohawkDir + "Skins\heli_transport_02_3_dahoman_co.paa"]
			]],
			["ION (Mohawk)", [
				[0, _mohawkDir + "Skins\heli_transport_02_1_ion_co.paa"],
				[1, _mohawkDir + "Skins\heli_transport_02_2_ion_co.paa"],
				[2, _mohawkDir + "Skins\heli_transport_02_3_ion_co.paa"]
			]]
		]
	],
	[ // Taru base colors
		"Heli_Transport_04_base_F",
		[
			["Black (Taru)", [
				[0, _taruDir + "heli_transport_04_base_01_black_co.paa"],
				[1, _taruDir + "heli_transport_04_base_02_black_co.paa"],
				[2, _taruDir + "heli_transport_04_pod_ext01_black_co.paa"],
				[3, _taruDir + "heli_transport_04_pod_ext02_black_co.paa"]
			]]
		]
	],
	[ // Taru bench colors
		"O_Heli_Transport_04_bench_F",
		[
			["Black (Taru)", [[2, _taruDir + "heli_transport_04_bench_black_co.paa"]]]
		]
	],
	[ // Taru fuel colors
		"O_Heli_Transport_04_fuel_F",
		[
			["Black (Taru)", [[2, _taruDir + "heli_transport_04_fuel_black_co.paa"]]]
		]
	]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
// ["Medical Kit", "medkits", localize "STR_WL_ShopDescriptions_MedKit", "client\icons\medkit.paa", 400, 200],  // not needed since there are First Ait Kits
customPlayerItems = compileFinal str
[
	["Water Bottle", "water", localize "STR_WL_ShopDescriptions_Water", "client\icons\waterbottle.paa", 30, 15],
	["Canned Food", "cannedfood", localize "STR_WL_ShopDescriptions_CanFood", "client\icons\cannedfood.paa", 30, 15],
	["Repair Kit", "repairkit", localize "STR_WL_ShopDescriptions_RepairKit", "client\icons\briefcase.paa", 500, 250],
	["Jerry Can (Full)", "jerrycanfull", localize "STR_WL_ShopDescriptions_fuelFull", "client\icons\jerrycan.paa", 150, 75],
	["Jerry Can (Empty)", "jerrycanempty", localize "STR_WL_ShopDescriptions_fuelEmpty", "client\icons\jerrycan.paa", 50, 25],
	["Spawn Beacon", "spawnbeacon", localize "STR_WL_ShopDescriptions_spawnBeacon", "client\icons\spawnbeacon.paa", 1500, 750],
	["Camo Net", "camonet", localize "STR_WL_ShopDescriptions_Camo", "client\icons\camonet.paa", 200, 100],
	["Syphon Hose", "syphonhose", localize "STR_WL_ShopDescriptions_SyphonHose", "client\icons\syphonhose.paa", 200, 100],
	["Energy Drink", "energydrink", localize "STR_WL_ShopDescriptions_Energy_Drink", "client\icons\energydrink.paa", 100, 50],
	["Warchest", "warchest", localize "STR_WL_ShopDescriptions_Warchest", "client\icons\warchest.paa", 1000, 500]
];

call compile preprocessFileLineNumbers "mapConfig\storeOwners.sqf";

storeConfigDone = compileFinal "true";
