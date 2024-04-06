function voltarMenuBatalha() {
	if (menuAtual != MenuEnum.Principal) {
		reproduzirSFXUI(sndFechar);
		
		if (menuAnterior == MenuEnum.Principal) {			
			switch (menuAtual) {
			    case MenuEnum.Atacar:
					y = player.y - 2;
					x = player.x + 21;
					sprite_index = sprBattleOpcaoAtacar;
					opcaoSelecionada = OpcaoMenuBatalhaEnum.Atacar;
			        break;
			    case MenuEnum.Itens:
			        x = player.x;
					y = player.y + 32;
					sprite_index = sprBattleOpcaoItem;
					opcaoSelecionada = OpcaoMenuBatalhaEnum.Itens;
			        break;
			    case MenuEnum.Confirmacao:
			        x = player.x - 12;
					y = player.y - 2;
					sprite_index = sprBattleOpcaoFugir;
					opcaoSelecionada = OpcaoMenuBatalhaEnum.Fugir;
			        break;
			}
		}
		else {
			if (menuAtual == MenuEnum.SelecionarInimigo) {		
			    listaInimigos[opcaoSelecionada].selecionado = false;
			}
		
			opcaoSelecionada = 0;
		}
		
		objBattle.textoInfo = "";
	    menuAtual = menuAnterior;
		menuAnterior = MenuEnum.Principal;
	}
}