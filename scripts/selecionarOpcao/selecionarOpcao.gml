function selecionarOpcao() {
	switch (opcaoSelecionada) {
	    case OpcaoMenuPauseEnum.Itens:
	        // TODO: Listar itens
	        break;
	    case OpcaoMenuPauseEnum.Equipamentos:
	        // TODO: Listar equipamentos
	        break;
	    case OpcaoMenuPauseEnum.Continuar:
	        executarMenuPausa();
	        break;
	    case OpcaoMenuPauseEnum.Sair:
	        // TODO: Criar modal para confirmar a saida do jogo
			game_end();
	        break;
	}
}