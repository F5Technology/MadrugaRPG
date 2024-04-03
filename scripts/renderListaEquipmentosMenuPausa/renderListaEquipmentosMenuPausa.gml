function renderListaEquipmentosMenuPausa(){
	var posicaoX = x;
	var posicaoY = y + sprite_height / 1.8;
	var tamanhoTexto = 0.4;
	var tamanhoInventario = array_length(objInventario.equipamentos);
	
	draw_set_font(fntMenu);
	
	if (tamanhoInventario > 0) {
		posicaoX += 12;
		var escalaIcones = 0.7;
		
	    for (var i = 0; i < tamanhoInventario; ++i) {
			var equipamento = objInventario.equipamentos[i];
			
			var posicaoTextoY = posicaoY + 3;
			var posicaoTextoX = posicaoX + sprite_get_width(equipamento.icone) - 2;
			   
			draw_set_color(c_white);
			
			//Icone
			draw_sprite_ext(equipamento.icone, 0, posicaoX, posicaoY, escalaIcones, escalaIcones, 0, c_white, image_alpha);
			
			if (opcaoSelecionada == i) {
				// Hover opção selecionada
				var largura = x + sprite_width - 14;
				var altura = posicaoY + sprite_get_height(equipamento.icone) - 4;
				
				draw_rectangle(posicaoX, posicaoY - 2, largura, altura, true);
				
				//Descricao					
				var posicaoDescricaoY = y + sprite_height / 2.5;
				
				draw_text_transformed(posicaoX, posicaoDescricaoY, equipamento.descricao, tamanhoTexto, tamanhoTexto, image_angle);
				
			    draw_set_color(c_yellow);
			}
			
			//Nome
			draw_text_transformed(posicaoTextoX, posicaoTextoY, equipamento.nome, tamanhoTexto, tamanhoTexto, image_angle);
			
			//Equipado
			if (equipamento.equipado) {
				draw_set_color(#a3a3c2);
			    posicaoTextoX = x + sprite_width - 40;
				draw_text_transformed(posicaoTextoX, posicaoTextoY, "Equipado", tamanhoTexto, tamanhoTexto, image_angle);
			}
						
			posicaoY += sprite_get_height(equipamento.icone) * escalaIcones + 4;
		}
	}
	else {
	   var mensagem = "Nao ha equipamentos no inventario";	   
	   posicaoX += (sprite_width / 2) - string_width(mensagem) / 5;

		draw_set_color(c_white);
		draw_text_transformed(posicaoX, posicaoY, mensagem, tamanhoTexto, tamanhoTexto, image_angle);
	}
}