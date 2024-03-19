function selecionarOpcao() {
	switch (menuAtual) {
	    case MenuEnum.Principal:
				if (opcaoSelecionada != OpcaoMenuPauseEnum.Continuar) {
				    reproduzirSFXUI(sndOpcaoSelecionada);
				}
				
				switch (opcaoSelecionada) {
				    case OpcaoMenuPauseEnum.Itens:
				        // TODO: Listar itens
				        break;
				    case OpcaoMenuPauseEnum.Equipamentos:
				        // TODO: Listar equipamentos
				        break;
				    case OpcaoMenuPauseEnum.Continuar:
						reproduzirSFXUI(sndFechar);
				        executarMenuPausa();
				        break;
				    case OpcaoMenuPauseEnum.Sair:
						opcaoSelecionada = 0;
				        menuAnterior = menuAtual;
						menuAtual = MenuEnum.Confirmacao;
						
						objetoConfirmacao = {
							posX: x,
							posY: y,
							funcaoConfirmacao: game_end,
							mensagem: "Tem certeza que deseja sair?",
							tipoConfirmacao: ModalConfirmacaoEnum.Central
						}
						
				        break;
				}
	        break;
	    case MenuEnum.Confirmacao:
			var confirmado = opcaoSelecionada == 0;
			
			if (confirmado) {
			    objetoConfirmacao.funcaoConfirmacao();
			}
			else {
			    voltarMenu();
			}
			
	        break;
	}
}