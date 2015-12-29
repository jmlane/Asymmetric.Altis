private [
  "_crate",
  "_headgear",
  "_goggles",
  "_uniforms",
  "_vests", 
  "_backpacks",
  "_items"
];

_crate = _this select 0;

_headgear = [
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
  "H_Shemag_olive",
  "H_Shemag_olive_hs",
  "H_ShemagOpen_khk",
  "H_ShemagOpen_tan",
  "H_Beret_blk",
  "H_Beret_red",
  "H_Beret_grn",
  "H_Watchcap_blk",
  "H_Watchcap_cbr",
  "H_Watchcap_khk",
  "H_Watchcap_camo",
  "H_Watchcap_sgg",
  "H_TurbanO_blk",
  "H_StrawHat",
  "H_StrawHat_Dark",
  "H_Hat_blue",
  "H_Hat_brown",
  "H_Hat_camo",
  "H_Hat_grey",
  "H_Hat_checker",
  "H_Hat_tan",
  "H_Cap_marshal"
];

_goggles = [
  "G_Aviator",
  "G_Balaclava_blk",
  "G_Balaclava_combat",
  "G_Balaclava_lowprofile",
  "G_Balaclava_oli",
  "G_Bandanna_aviator",
  "G_Bandanna_beast",
  "G_Bandanna_blk",
  "G_Bandanna_khk",
  "G_Bandanna_oli",
  "G_Bandanna_shades",
  "G_Bandanna_sport",
  "G_Bandanna_tan",
  "G_Combat",
  "G_Lady_Blue",
  "G_Lady_Dark",
  "G_Lady_Mirror",
  "G_Lady_Red",
  "G_Lowprofile",
  "G_Shades_Black",
  "G_Shades_Blue",
  "G_Shades_Green",
  "G_Shades_Red",
  "G_Spectacles",
  "G_Spectacles_Tinted",
  "G_Sport_Blackred",
  "G_Sport_BlackWhite",
  "G_Sport_Blackyellow",
  "G_Sport_Checkered",
  "G_Sport_Greenblack",
  "G_Sport_Red",
  "G_Squares",
  "G_Squares_Tinted"
];

_uniforms = [
  "U_BG_Guerilla1_1",
  "U_BG_Guerilla2_1",
  "U_BG_Guerilla2_2",
  "U_BG_Guerilla2_3",
  "U_BG_Guerilla3_1",
  "U_BG_Guerilla3_2",
  "U_BG_leader",
  "U_BG_Guerrilla_6_1"
];

_vests = [
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

_backpacks = [
  "B_Kitbag_cbr",
  "B_Kitbag_rgr",
  "B_Kitbag_sgg",
  "B_Carryall_oli",
  "B_Carryall_khk",
  "B_Carryall_cbr",
  "B_TacticalPack_blk",
  "B_TacticalPack_oli",
  "B_TacticalPack_rgr"
];

_items = [
  "ALiVE_Tablet"
];

// Populate with predefined items and whatever is already in the crate
[_crate, _backpacks] call BIS_fnc_addVirtualBackpackCargo;
[_crate, ((itemCargo _crate) + _headgear + _goggles + _uniforms + _vests + _items)] call BIS_fnc_addVirtualItemCargo;
[_crate, (magazineCargo _crate)] call BIS_fnc_addVirtualMagazineCargo;
[_crate, (weaponCargo _crate)] call BIS_fnc_addVirtualWeaponCargo;

["AmmoboxInit", [_crate, false]] spawn BIS_fnc_arsenal;
