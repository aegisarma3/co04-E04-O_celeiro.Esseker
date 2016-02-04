//Radiation script
_player = _this select 0;
_rad =0;

0 = nuke spawn {
  while {radarea} do {
    ["<t size='8' ><img image=""images\geiger.paa"" />",0.74,0.1,5,0,0.0] spawn bis_fnc_dynamictext;
    if (random (player distance _this) < 1) then {
      nuke say3D "geiger";
      };
      sleep 0.01;
  };
};


while {radarea} do {
  _rad = _rad + 0.05;
  [_player, _rad] call ace_medical_fnc_adjustPainLevel;
  sleep 2;
  hint format["nível de radiação 122uSv/h, radiação absorvida: %1uGy", _rad];
  if (_rad >0.6) then {
    [_player, true] call ace_medical_fnc_setUnconscious;
  };
};
