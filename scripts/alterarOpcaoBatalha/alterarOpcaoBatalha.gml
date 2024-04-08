function alterarOpcaoBatalha() {	
	var limiteMaximo = 0;
	
	switch (menuAtual) {
	    case MenuEnum.Principal:
			if (opcaoSelecionada != opcaoAnterior) {
				reproduzirSFXUI(sndHover);
			}
			
			switch (opcaoSelecionada) {
			    case OpcaoMenuBatalhaEnum.Atacar:
					x = player.x + 21;
					y = player.y - 2;
					sprite_index = sprBattleOpcaoAtacar;
			        break;
			    case OpcaoMenuBatalhaEnum.Defender:
			        x = player.x;
					y = player.y - 24;
					sprite_index = sprBattleOpcaoDefender;
			        break;
			    case OpcaoMenuBatalhaEnum.Itens:
			        x = player.x;
					y = player.y + 32;
					sprite_index = sprBattleOpcaoItem;
			        break;
			    case OpcaoMenuBatalhaEnum.Fugir:
			        x = player.x - 12;
					y = player.y - 2;
					sprite_index = sprBattleOpcaoFugir;
			        break;
			}
	        break;
		case MenuEnum.Atacar:
			var tamanhoListaAtaques = array_length(player.ficha.ataques);
			limiteMaximo = tamanhoListaAtaques > 0 ? tamanhoListaAtaques-1 : 0;
			
			if (tamanhoListaAtaques > 0) {
				reproduzirSFXUI(sndHover);
				
				if (opcaoSelecionada < 0) {
				    opcaoSelecionada = limiteMaximo;
				}
				else if (opcaoSelecionada > limiteMaximo)  {
				    opcaoSelecionada = 0;
				}	
			}
		case MenuEnum.SelecionarInimigo:
			var quantidadeInimigos = array_length(listaInimigos);
			limiteMaximo = quantidadeInimigos > 0 ? quantidadeInimigos-1 : 0;
			
			if (quantidadeInimigos > 0) {
				reproduzirSFXUI(sndHover);
				
				if (opcaoSelecionada < 0) {
				    opcaoSelecionada = limiteMaximo;
				}
				else if (opcaoSelecionada > limiteMaximo)  {
				    opcaoSelecionada = 0;
				}	
			}
	        break;
		case MenuEnum.Itens:
			var tamanhoInventario = array_length(objInventario.itens);
			limiteMaximo = tamanhoInventario > 0 ? tamanhoInventario-1 : 0;
			
			if (tamanhoInventario > 0) {
				reproduzirSFXUI(sndHover);
				
				if (opcaoSelecionada < 0) {
				    opcaoSelecionada = limiteMaximo;
				}
				else if (opcaoSelecionada > limiteMaximo)  {
				    opcaoSelecionada = 0;
				}	
			}
	        break;
	    case MenuEnum.Confirmacao:
			reproduzirSFXUI(sndHover);
			
			if (opcaoSelecionada < 0) {
			    opcaoSelecionada = 1;
			}
			else if (opcaoSelecionada > 1)  {
			    opcaoSelecionada = 0;
			}			
	        break;
	}
}