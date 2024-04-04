function renderListaItensMenuBatalha() {
	var altura = 0;
	var largura = 0;
	var padding = 2;
	var posicaoX = x;
	var posicaoY = y;
	var tamanhoTexto = 0.5;
	var tamanhoInventario = array_length(objInventario.itens);
	
	draw_set_color(c_white);
	draw_set_font(fntMenu);
	
	if (tamanhoInventario > 0) {
		posicaoX -= 40;
		posicaoY -= 6;
		var escalaIcones = 0.7;
		largura = string_width("Refresco de limao") + 8;
		altura = sprite_get_height(sprRefrescoLimao) * 2;
		
		draw_sprite_stretched(sprBattleCaixaSubMenu, 0, posicaoX, posicaoY, largura, altura);
		
		posicaoX += padding;
		posicaoY += padding + 1;
		
	    for (var i = 0; i < tamanhoInventario; ++i) {
			codigoVerificado = objInventario.itens[i].codigo;
			var indice = array_find_index(Ficha.item, function(ficha) { return ficha.codigo == codigoVerificado; });
			
			if (indice) {
				var fichaItem = Ficha.item[indice];
				var posicaoTextoY = posicaoY + 3;
				var posicaoTextoX = posicaoX + sprite_get_width(fichaItem.icone) - 2;
				var quantidade = string_ext("x{0}", [objInventario.itens[i].quantidade]);
				
				draw_set_color(c_white);
				
				//Icone
				draw_sprite_ext(fichaItem.icone, 0, posicaoX, posicaoY, escalaIcones, escalaIcones, 0, c_white, image_alpha);
				
				if (opcaoSelecionada == i) {
				    draw_set_color(c_yellow);
				}
				else {
					draw_set_color(#AE6C37);
				}
				
				//Nome
				draw_text_transformed(posicaoTextoX, posicaoTextoY, fichaItem.nome, tamanhoTexto, tamanhoTexto, image_angle);
				
				//Quantidade
				posicaoTextoX = posicaoX + largura - padding * 7;
				draw_text_transformed(posicaoTextoX, posicaoTextoY, quantidade, tamanhoTexto, tamanhoTexto, image_angle);
				
				posicaoY += sprite_get_height(fichaItem.icone) * escalaIcones + 4;
			}
		}
	}
	else {
		padding = 2;
		posicaoX -= 40;
		posicaoY -= 6;
		var mensagem = "Nao ha itens no inventario";	 
		var tamanhoMensagem = string_width(mensagem);
		largura = tamanhoMensagem / 1.8;
		altura = string_height(mensagem) ;
		
		draw_sprite_stretched(sprBattleCaixaSubMenu, 0, posicaoX, posicaoY, largura, altura);
		
		draw_set_color(#AE6C37);
		draw_text_transformed(posicaoX + padding, posicaoY + padding, mensagem, tamanhoTexto, tamanhoTexto, image_angle);
	}
}