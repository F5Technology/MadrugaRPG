function renderListaAtaquesMenuBatalha() {
	var padding = 2;
	var posicaoX = x;
	var posicaoY = y;
	var tamanhoTexto = 0.5;
	var largura = string_width("Bastao de fogo") - 10;
	var altura = sprite_get_height(sprRefrescoLimao) * 1.6;
	var tamanhoLista = array_length(player.ficha.ataques);
	
	draw_set_color(c_white);
	draw_set_font(fntMenu);
	
	draw_sprite_stretched(sprBattleCaixaSubMenu, 0, posicaoX, posicaoY, largura, altura);
	
	posicaoX += padding;
	posicaoY += padding + 1;
	
	for (var a = 0; a < tamanhoLista; ++a) {
	   var ataque = player.ficha.ataques[a];
	   
		if (opcaoSelecionada == a) {
		    draw_set_color(c_yellow);
			objBattle.textoInfo = ataque.descricao;
		}
		else {
			draw_set_color(#AE6C37);
		}
		
		//Nome
		draw_text_transformed(posicaoX, posicaoY, ataque.nome, tamanhoTexto, tamanhoTexto, image_angle);
		
		//PP
		if (ataque.custoPP > 0) {
			var pp = string_ext("{0}PP", [ataque.custoPP]);
			var posicaoTextoX = posicaoX + largura - padding * 9;
			
			draw_text_transformed(posicaoTextoX, posicaoY, pp, tamanhoTexto, tamanhoTexto, image_angle);
		}
		
		posicaoY += string_height(ataque.nome) - 4;
	}
}