function renderListaItens() {
	var posicaoX = x;
	var posicaoY = y + sprite_height / 1.8;
	var tamanhoTexto = 0.4;
	var tamanhoInventario = array_length(objInventario.itens);
	
	draw_set_font(fntMenu);
	
	if (tamanhoInventario > 0) {
		posicaoX += 12;
		var escalaIcones = 0.7;
		
	    for (var i = 0; i < tamanhoInventario; ++i) {
			codigoVerificado = objInventario.itens[i].codigo;
			var indice = array_find_index(Ficha.item, function(ficha) { return ficha.codigo == codigoVerificado; });
			
			if (indice) {
				var textoValoresRecuperacao = "";
				var fichaItem = Ficha.item[indice];
				var posicaoTextoY = posicaoY + 3;
				var posicaoTextoX = posicaoX + sprite_get_width(fichaItem.icone) - 2;
				var quantidade = string_ext("x{0}", [objInventario.itens[i].quantidade]);
			   
				draw_set_color(c_white);
				
				//Icone
				draw_sprite_ext(fichaItem.icone, 0, posicaoX, posicaoY, escalaIcones, escalaIcones, 0, c_white, image_alpha);
				
				if (opcaoSelecionada == i) {
					// Hover opção selecionada
					var largura = x + sprite_width - 14;
					var altura = posicaoY + sprite_get_height(fichaItem.icone) - 4;
					
					draw_rectangle(posicaoX, posicaoY - 2, largura, altura, true);
					
					
					#region Descricao
					
					if (fichaItem.HP > 0 && fichaItem.PP > 0) {
					    textoValoresRecuperacao = string_ext("{0} HP e {1} PP", [fichaItem.HP, fichaItem.PP]);
					}
					else if (fichaItem.HP > 0) {
					    textoValoresRecuperacao = string_ext("{0} HP", [fichaItem.HP]);
					}
					else if (fichaItem.PP > 0) {
					    textoValoresRecuperacao = string_ext("{0} PP", [fichaItem.PP]);
					}
					
					var posicaoDescricaoY = y + sprite_height / 2.5;
					var descricao = string_ext("Recupera {0}", [textoValoresRecuperacao]);
					
					draw_text_transformed(posicaoX, posicaoDescricaoY, descricao, tamanhoTexto, tamanhoTexto, image_angle);
				
					#endregion
					
				    draw_set_color(c_yellow);
				}
				
				//Nome
				draw_text_transformed(posicaoTextoX, posicaoTextoY, fichaItem.nome, tamanhoTexto, tamanhoTexto, image_angle);
				
				//Quantidade
				posicaoTextoX = x + sprite_width - 20;
				draw_text_transformed(posicaoTextoX, posicaoTextoY, quantidade, tamanhoTexto, tamanhoTexto, image_angle);
			   
				posicaoY += sprite_get_height(fichaItem.icone) * escalaIcones + 4;
			}
		}
	}
	else {
	   var mensagem = "Nao ha itens no inventario";	   
	   posicaoX += (sprite_width / 2) - string_width(mensagem) / 4;

		draw_set_color(c_white);
		draw_text_transformed(posicaoX, posicaoY, mensagem, tamanhoTexto, tamanhoTexto, image_angle);
	}
}