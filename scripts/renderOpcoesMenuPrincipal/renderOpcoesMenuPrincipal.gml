function renderOpcoesMenuPrincipal(){
		var padding = 12; // Para moldura
		var positionTop = 5; //Para cada opção
		var posicaoX = x + padding;
		var posicaoY = y + sprite_get_height(sprMolduraMenu) - padding - 50;
		
		var opcoes = [
			"Itens",
			"Equipamentos",
			"Continuar",
			"Sair"
		];
		
		draw_set_font(fntMenu);
		
		for (var opcao = 0; opcao < array_length(opcoes); ++opcao) {
			   
			//Desenha moldura de hover
		    if (opcao == opcaoSelecionada) {
				var distancia = 2;
				var altura = posicaoY + 6.5;
				var posicaoHoverX = posicaoX - 3;
				var posicaoHoverY = posicaoY - 1.5;
				var largura = posicaoX + string_width(opcoes[OpcaoMenuPauseEnum.Equipamentos]) - 35;
				
				//Sombra
				draw_set_color(c_black);
				draw_rectangle(posicaoHoverX, posicaoHoverY, largura, altura, false);
				
				//Hover
				altura -= distancia;
				largura += distancia;
				posicaoHoverY -= distancia;
				posicaoHoverX += distancia;
				
				draw_set_color(c_white);
				draw_rectangle(posicaoHoverX, posicaoHoverY, largura, altura, false);
			   
				draw_set_color(#151515);
				draw_text_transformed(posicaoX + distancia, posicaoY - distancia, opcoes[opcao], 0.5, 0.5, image_angle);
			} else {
				draw_set_color(c_white);
				draw_text_transformed(posicaoX, posicaoY, opcoes[opcao], 0.5, 0.5, image_angle);
			}
			
			
			posicaoY += string_height(opcoes[opcao]) - positionTop;
		}
}