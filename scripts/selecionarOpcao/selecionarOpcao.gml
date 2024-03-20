function selecionarOpcao() {
	switch (menuAtual) {
	    case MenuEnum.Principal:
				menuAnterior = menuAtual;
				
				if (opcaoSelecionada != OpcaoMenuPauseEnum.Continuar) {
				    reproduzirSFXUI(sndOpcaoSelecionada);
				}
				
				switch (opcaoSelecionada) {
				    case OpcaoMenuPauseEnum.Itens:
						opcaoSelecionada = 0;
						menuAtual = MenuEnum.Itens;
				        // TODO: Listar itens
				        break;
				    case OpcaoMenuPauseEnum.Equipamentos:
						opcaoSelecionada = 0;
						menuAtual = MenuEnum.Equipamentos;
				        // TODO: Listar equipamentos
				        break;
				    case OpcaoMenuPauseEnum.Continuar:
						reproduzirSFXUI(sndFechar);
				        executarMenuPausa();
				        break;
				    case OpcaoMenuPauseEnum.Sair:
						opcaoSelecionada = 0;
						menuAtual = MenuEnum.Confirmacao;
						
						objetoConfirmacao = {
							funcaoConfirmacao: game_end,
							mensagem: "Tem certeza que deseja sair?"
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
	    case MenuEnum.Itens:
			var tamanhoInventario = array_length(objInventario.itens);
			
			if (tamanhoInventario > 0) {
				reproduzirSFXUI(sndOpcaoSelecionada);			
				menuAnterior = menuAtual;		
				menuAtual = MenuEnum.Confirmacao;
				itemSelecionado = opcaoSelecionada;
				opcaoSelecionada = 0;
				
				objetoConfirmacao = {
					funcaoConfirmacao: usarItemNoInventario,
					mensagem: "Usar item?"
				}
			}
			else {
				reproduzirSFXUI(sndNegado);
			}
			
	        break;
	}
}