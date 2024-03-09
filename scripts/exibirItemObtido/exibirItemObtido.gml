function exibirItemObtido() {
	var icone = 0;
	var texto = "";
	
	switch (item) {
	    case ItensEnum.RefrescoGroselha:
			icone = sprRefrescoGroselha;
			texto = "Obteve o Refresco de Limao";
	        break;
	    case ItensEnum.RefrescoLimao:
			icone = sprRefrescoLimao;
			texto = "Obteve o Refresco de Groselha";
	        break;
	    case ItensEnum.AnelDeFogo:
			icone = sprAnelDeFogo;
			texto = "Obteve o Anel de Fogo";
	        break;
	}
	
	var padding = 5;
	var posicaoX = camera_get_view_x(view_camera[0]) + 10;
	var posicaoY = camera_get_view_y(view_camera[0]) + 10;
	
	var altura = sprite_get_height(icone) + 10;
	var largura = (string_width(texto) * 0.65) + sprite_get_width(icone);
	
	draw_set_alpha(image_alpha);
	
	draw_sprite_stretched(sprCaixa, 0, posicaoX, posicaoY, largura, altura);
	draw_sprite(icone, 0 , posicaoX + padding, posicaoY + padding);
	
	var posicaoXTexto = posicaoX + padding + sprite_get_width(icone) + 3;
	
	draw_set_font(fntItemObtido);
	draw_set_color(c_white);
	//draw_text(posicaoXTexto, posicaoY + 7, texto);
	draw_text_transformed(posicaoXTexto, posicaoY + 8, texto, 0.5, 0.5, image_angle);
}