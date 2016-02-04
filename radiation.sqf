//Radiation script
hint "Player has received a lethal dose of radation";

_player = _this select 0;
_rad =0;

while {radarea} do {

  _rad = _rad + 0.05;
  [_player, _rad] call ace_medical_fnc_adjustPainLevel;
  sleep 60;
  hint format["nível %1uS de radiação", _rad];
  if (_rad >0.6) then {
    [_player, true] call ace_medical_fnc_setUnconscious;
  };
}
