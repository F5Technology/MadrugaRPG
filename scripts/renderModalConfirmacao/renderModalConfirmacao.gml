function renderModalConfirmacao() {
		var padding = 5; // Para moldura
		var posicaoX = 0;
		var posicaoY = 0;
		var tamanhoTexto = 0.5;
		var paddingOpcoes = padding / 2;
		var altura = string_height(objetoConfirmacao.mensagem);
		var largura = string_width(objetoConfirmacao.mensagem) / 1.9;
		
		var opcoes = [
			"Sim",
			"Nao"
		];
		
		draw_set_font(fntOpcaoMenu);
		
		if (objetoConfirmacao.tipoConfirmacao == ModalConfirmacaoEnum.Central) {
			altura *= 1.8;
			
			posicaoX = camera_get_view_x(view_camera[0]) + 
								(camera_get_view_width(view_camera[0]) / 2) - (largura / 2);
								
			posicaoY = camera_get_view_y(view_camera[0]) + 								
								(camera_get_view_height(view_camera[0]) / 2) - (altura  / 2);
			
			draw_sprite_stretched(sprCaixa, 0, posicaoX, posicaoY, largura, altura);
			
			draw_set_color(c_white);
			draw_text_transformed(posicaoX + padding, posicaoY + padding, objetoConfirmacao.mensagem, tamanhoTexto, tamanhoTexto, image_angle);
			
			posicaoY += padding * 3;
			posicaoX += (largura / 2) - string_width(opcoes[0]);
			
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
				
				posicaoX += string_width(textoOpcao) + paddingOpcoes;
			}
		}
		else if (tipo == ModalConfirmacaoEnum.Unitario) {
		    altura *= 4;
			posicaoX = objetoConfirmacao.posX;
			posicaoY = objetoConfirmacao.posY;
			
			draw_sprite_stretched(sprCaixa, 0, posicaoX, posicaoY, largura, altura);
			
			draw_set_color(c_white);
			draw_text_transformed(posicaoX + padding, posicaoY + padding, objetoConfirmacao.mensagem, tamanhoTexto, tamanhoTexto, image_angle);
			
			posicaoY += padding;
			
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
				
				posicaoY += string_height(textoOpcao) + paddingOpcoes;
			}
		}
}