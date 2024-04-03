function descreverBatalha() {
	var emBatalha = global.emBatalha;
		
	if (emBatalha && string_length(textoInfo) > 0) {
		var altura = string_height(textoInfo) * 1.2;
		var largura = string_width(textoInfo) * 0.7;
		var posicaoX =  camera_get_view_x(view_camera[0]) + sprite_get_width(sprCenarioBattle) / 2 - largura / 2;
		var posicaoY =  camera_get_view_y(view_camera[0]) + 10;
		
		draw_sprite_stretched(sprCaixa, 0, posicaoX, posicaoY, largura, altura);
		
		posicaoX += 6;
		posicaoY += 5;
		draw_set_color(c_white);
		draw_set_font(fntIInfoNome);
		draw_text_transformed(posicaoX, posicaoY, textoInfo, 0.5, 0.5, image_angle);
	}
}