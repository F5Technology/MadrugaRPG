function executarTransicao() {
	var altura = sprite_get_height(sprEfeitoTransicao);
	var largura = sprite_get_width(sprEfeitoTransicao);
	var frameFinal = sprite_get_number(sprEfeitoTransicao);
	var limiteVertical = display_get_gui_height() div altura;
	var limiteHorizontal = display_get_gui_width() div largura;
	var velocidade = sprite_get_speed(sprEfeitoTransicao) / game_get_speed(gamespeed_fps);
	
	for (var yy = 0; yy <= limiteVertical; ++yy) {
		for (var xx = 0; xx <= limiteHorizontal; ++xx) {
		    draw_sprite_ext(
				sprEfeitoTransicao,
				min(max(0, frameAtual - xx), frameFinal - 1),
				xx * largura,
				yy * altura,
				1, 1, 0, c_black, 1
			);
		}
	}
}