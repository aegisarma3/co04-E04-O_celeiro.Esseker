_disfarcado = _this select 1;

removeAllWeapons _disfarcado;
removeAllItems _disfarcado;
removeAllAssignedItems _disfarcado;
removeUniform _disfarcado;
removeVest _disfarcado;
removeBackpack _disfarcado;
removeHeadgear _disfarcado;
removeGoggles _disfarcado;

_disfarcado forceAddUniform "TRYK_U_B_OD_OD_R_CombatUniform";
for "_i" from 1 to 3 do {_disfarcado addItemToUniform "SMA_30Rnd_556x45_M855A1";};
_disfarcado addVest "V_PlateCarrierIA2_dgtl";


_disfarcado addWeapon "SMA_TavorOD_F";
_disfarcado addPrimaryWeaponItem "acc_flashlight";
_disfarcado addPrimaryWeaponItem "optic_ACO_grn";
_disfarcado addWeapon "hgun_ACPC2_F";
_disfarcado addItem "ACRE_PRC152";
_disfarcado linkItem "ItemMap";
_disfarcado linkItem "ItemCompass";
_disfarcado linkItem "ItemWatch";

_disfarcado setCaptive true;


//this allowDamage false; this addaction ["<t color='#FF6622'>" +"Vestir uniforme (Disfarce)","disfarce.sqf",nil,1,true,false,"","((_target distance _this <3))"];
