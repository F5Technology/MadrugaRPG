draw_sprite_ext(sprSombraMadrugaBattle, image_index, x, y + 20, 1,1, 0, c_white, image_alpha);
//exibirSpritePersonagemSelecionado();
if (hit && checarFImAnimacao()) {
   image_speed = 0;
}

if (instance_exists(objOpcoesBattle)) {
	depth = objOpcoesBattle.depth + 1;
}
else {
	depth = -y;
}

draw_self();