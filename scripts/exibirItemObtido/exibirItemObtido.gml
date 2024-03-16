function exibirItemObtido() {
	var texto = string_ext("Obteve {0}", [item.nome]);
	
	var padding = 5;
	var posicaoX = camera_get_view_x(view_camera[0]) + 10;
	var posicaoY = camera_get_view_y(view_camera[0]) + 10;
	
	var altura = sprite_get_height(item.icone) + 10;
	var largura = (string_width(texto) * 0.65) + sprite_get_width(item.icone);
	
	draw_set_alpha(image_alpha);
	
	draw_sprite_stretched(sprCaixa, 0, posicaoX, posicaoY, largura, altura);
	draw_sprite(item.icone, 0 , posicaoX + padding, posicaoY + padding);
	
	var posicaoXTexto = posicaoX + padding + sprite_get_width(item.icone) + 3;
	
	draw_set_font(fntIInfoNome);
	draw_set_color(c_white);
	//draw_text(posicaoXTexto, posicaoY + 7, texto);
	draw_text_transformed(posicaoXTexto, posicaoY + 8, texto, 0.5, 0.5, image_angle);
}