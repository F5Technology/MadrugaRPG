draw_sprite(sprSombraAranhaBattle, image_index, x, y + 8);
exibirSpritePersonagemSelecionado();

if (hit) {
	exibirHPInimigo();
	
	if (checarFImAnimacao()) {
	   image_speed = 0;
	}
}

draw_self();