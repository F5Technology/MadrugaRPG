/// @description Vitoria de batalha
var tempo = 60;

alarm[4] = tempo;
trocarMusica(trackOverworld, tempo);
iniciarCooldownInimigoOW(global.inimigoColidido);
instance_create_layer(-10, -10, "Main", objTransicao);