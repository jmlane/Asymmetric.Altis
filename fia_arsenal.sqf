private ["_availableHeadgear", "_availableGoggles", "_availableUniforms", "_availableVests", "_availableBackpacks"];

_availableHeadgear = [
  "H_Booniehat_khk",
  "H_Booniehat_oli",
  "H_Booniehat_indp",
  "H_Booniehat_grn",
  "H_Booniehat_tan",
  "H_Booniehat_dirty",
  "H_Booniehat_khk_hs",
  "H_Cap_red",
  "H_Cap_blu",
  "H_Cap_oli",
  "H_Cap_oli_hs",
  "H_Cap_headphones",
  "H_Cap_tan",
  "H_Cap_blk",
  "H_Cap_blk_CMMG",
  "H_Cap_blk_ION",
  "H_Cap_grn",
  "H_Cap_grn_BI",
  "H_Cap_surfer",
  "H_MilCap_oucamo",
  "H_MilCap_gry",
  "H_MilCap_blue",
  "H_BandMask_blk",
  "H_BandMask_khk",
  "H_BandMask_reaper",
  "H_BandMask_demon",
  "H_Bandanna_surfer",
  "H_Bandanna_khk",
  "H_Bandanna_khk_hs",
  "H_Bandanna_cbr",
  "H_Bandanna_sgg",
  "H_Bandanna_sand",
  "H_Bandanna_surfer_blk",
  "H_Bandanna_surfer_grn",
  "H_Bandanna_gry",
  "H_Bandanna_blu",
  "H_Bandanna_camo",
  "H_Shemag_khk",
  "H_Shemag_tan",
	"H_ShemagOpen_khk",
	"H_Watchcap_blk",
	"H_PilotHelmetHeli_B",
	"H_CrewHelmetHeli_B",
	"H_PilotHelmetFighter_B",
	"H_HelmetCrew_B"
];

_availableGoggles = [
	"G_Combat",
	"G_Lowprofile",
	"G_Shades_Black",
	"G_Shades_Blue",
	"G_Shades_Green",
	"G_Shades_Red",
	"G_Sport_Blackred",
	"G_Sport_Blackyellow",
	"G_Squares_Tinted",
	"G_Tactical_Black",
	"G_Tactical_Clear",
	"G_Bandanna_blk"
];

_availableUniforms = [
  "U_BG_Guerilla1_1",
  "U_BG_Guerilla2_1",
  "U_BG_Guerilla2_2",
  "U_BG_Guerilla2_3",
  "U_BG_Guerilla3_1",
  "U_BG_Guerilla3_2",
  "U_BG_leader",
  "U_BG_Guerrilla_6_1"
];

_availableVests = [
  "V_Rangemaster_belt",
  "V_BandollierB_khk",
  "V_BandollierB_cbr",
  "V_BandollierB_blk",
  "V_BandollierB_oli",
  "V_Chestrig_blk",
  "V_Chestrig_oli",
  "V_TacVest_blk",
  "V_TacVest_oli"
];

_availableBackpacks = [
	"B_AssaultPack_rgr",
	"B_AssaultPack_mcamo",
	"B_Kitbag_rgr",
	"B_Kitbag_mcamo",
	"B_TacticalPack_blk",
	"B_TacticalPack_mcamo"
];

//Populate with predefined items and whatever is already in the crate
[_crate,((backpackCargo _crate) + _availableBackpacks)] call BIS_fnc_addVirtualBackpackCargo;
[_crate,((itemCargo _crate) + _availableHeadgear + _availableGoggles + _availableUniforms + _availableVests)] call BIS_fnc_addVirtualItemCargo;
[_crate,(magazineCargo _crate)] call BIS_fnc_addVirtualMagazineCargo;
[_crate,(weaponCargo _crate)] call BIS_fnc_addVirtualWeaponCargo;
