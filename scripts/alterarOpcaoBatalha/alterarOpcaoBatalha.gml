function alterarOpcaoBatalha() {
	reproduzirSFXUI(sndHover);
	
	switch (menuAtual) {
	    case MenuEnum.Principal:
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
	    case MenuEnum.Confirmacao:
			if (opcaoSelecionada < 0) {
			    opcaoSelecionada = 1;
			}
			else if (opcaoSelecionada > 1)  {
			    opcaoSelecionada = 0;
			}			
	        break;
	}
}