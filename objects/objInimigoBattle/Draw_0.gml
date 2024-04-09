draw_sprite(sprSombraAranhaBattle, image_index, x, y + 8);
exibirSpritePersonagemSelecionado();

if (hit || morto) {
	exibirHPInimigo();
	
	if (hit && checarFImAnimacao()) {
	   image_speed = 0;
	}
}

draw_self();