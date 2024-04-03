function selecionarOpcaoBatalha() {	
	switch (menuAtual) {
	    case MenuEnum.Principal:
				reproduzirSFXUI(sndOpcaoSelecionada);
				
				switch (opcaoSelecionada) {
				    case OpcaoMenuBatalhaEnum.Atacar:
						//TODO: Criar a função
				        break;
				    case OpcaoMenuBatalhaEnum.Defender:
						defenderBatalha();
				        break;
				    case OpcaoMenuBatalhaEnum.Itens:
						//TODO: Criar a função
				        break;
				    case OpcaoMenuBatalhaEnum.Fugir:
						sprite_index = noone;
						opcaoSelecionada = 0;
						menuAtual = MenuEnum.Confirmacao;
						
						objetoConfirmacao = {
							funcaoConfirmacao: fugirBatalha,
							mensagem: "Tem certeza que deseja fugir?"
						}
				        break;
				}
	        break;
	    case MenuEnum.Confirmacao:
			var confirmado = opcaoSelecionada == 0;
			
			if (confirmado) {
				reproduzirSFXUI(sndOpcaoSelecionada);
			    objetoConfirmacao.funcaoConfirmacao();
			}
			else {
			    voltarMenuBatalha();
			}
			
	        break;
	}

}