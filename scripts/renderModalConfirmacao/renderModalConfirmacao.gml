function renderModalConfirmacao() {
		var padding = 5; // Para moldura
		var tamanhoTexto = 0.5;
		var marginOpcoes = 15;
		var tamanhoMensagem = string_width(objetoConfirmacao.mensagem);
		
		var largura = tamanhoMensagem / 1.8;
		var altura = string_height(objetoConfirmacao.mensagem) * 1.8 ;
		
		if (tamanhoMensagem < 70) {
		    largura += padding + 2;
		}
		
		var posicaoX = camera_get_view_x(view_camera[0]) + 
							(camera_get_view_width(view_camera[0]) / 2) - (largura / 2);
							
		var posicaoY = camera_get_view_y(view_camera[0]) + 								
							(camera_get_view_height(view_camera[0]) / 2) - (altura  / 2);
		
		var opcoes = [
			"Sim",
			"Nao"
		];
		
		draw_set_font(fntMenu);
		
		draw_sprite_stretched(sprCaixa, 0, posicaoX, posicaoY, largura, altura);
		
		draw_set_color(c_white);
		draw_text_transformed(posicaoX + padding, posicaoY + padding, objetoConfirmacao.mensagem, tamanhoTexto, tamanhoTexto, image_angle);
		
		posicaoY += padding * 3;
		
		//Opcoes
		//posicaoX += (largura / 1.5) - string_width(opcoes[0]); //=> No centro
		posicaoX += largura - (string_width(opcoes[0]) * 1.7); //=> No lado direito
		//posicaoX += largura / 6.3; //=> No lado esquerdo
		
		for (var opcao = 0; opcao < array_length(opcoes); ++opcao) {
			var textoOpcao = opcoes[opcao];
			
		    if (opcao == opcaoSelecionada) {
				draw_set_color(c_yellow);
				draw_text_transformed(posicaoX, posicaoY, textoOpcao, tamanhoTexto, tamanhoTexto, image_angle);
			}
			else {
				draw_set_color(c_white);
				draw_text_transformed(posicaoX, posicaoY, textoOpcao, tamanhoTexto, tamanhoTexto, image_angle);
			}
			
			posicaoX += marginOpcoes;
		}
}