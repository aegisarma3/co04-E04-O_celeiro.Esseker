//Radiation script
_player = _this select 0;
_rad =0;

0 = nuke spawn {  while {radarea} do {
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

//_nuke = "Land_Device_disassembled_F" createVehicle screenToWorld [0.5,0.5];



/*0 = nuke spawn {
  nukeBomba = _this select 0;
  while {true} do {
    if (random (player distance nukeBomba) ＜ 1) then {
      playSound "ReadoutClick";
    };
    sleep 0.01;
  };
};
*/

//_nuke = "Land_Device_disassembled_F" createVehicle screenToWorld [0.5,0.5];

/*separator1 = parseText "<br />----------------------------------------------------------------<br />";
content1 = parseText "<t color='#00FF22'>H:RT\33>:</t> Analisando rede local ............<br /><t color='#00FF22'>H:RT\33>:</t> 5 Telektower encontradas.  <br /><t color='#00FF22'>H:RT\33>:</t> Baixando coordenadas ..........";
iimage = "images\logo.paa";
txt = composeText [image iimage,separator1,content1];
hint txt;

["<t size='8' ><img image=""images\geiger.paa"" /><br/><t size='0.6' color='#FFFFFF'>nível de radiação 122uSv/h, <br/>< t size='0.6' color='#FFFFFF'>total de absorção %1uGy</t>",0.77,-0.07,5,1,0.0] spawn bis_fnc_dynamictext;
*/
