function selecionarOpcaoBatalha() {	
	switch (menuAtual) {
	    case MenuEnum.Principal:
				reproduzirSFXUI(sndOpcaoSelecionada);
				
				switch (opcaoSelecionada) {
				    case OpcaoMenuBatalhaEnum.Atacar:
						sprite_index = noone;
						opcaoSelecionada = 0;
						menuAtual = MenuEnum.Atacar;
				        break;
				    case OpcaoMenuBatalhaEnum.Defender:
						defenderBatalha();
				        break;
				    case OpcaoMenuBatalhaEnum.Itens:
						sprite_index = noone;
						opcaoSelecionada = 0;
						menuAtual = MenuEnum.Itens;
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
	    case MenuEnum.Atacar:
			reproduzirSFXUI(sndOpcaoSelecionada);
			player.ataqueSelecionado = player.ficha.ataques[opcaoSelecionada];
			
			opcaoSelecionada = 0;
			menuAnterior = MenuEnum.Atacar;
			menuAtual = MenuEnum.SelecionarInimigo;
			listaInimigos = array_filter(objBattle.personagensEmBatalha, 
			function(personagem, index) { 
				return personagem.object_index == objInimigoBattle 
			})
			break;
	    case MenuEnum.SelecionarInimigo: 
			reproduzirSFXUI(sndOpcaoSelecionada);
			prepararParaAtacar(listaInimigos[opcaoSelecionada]);
			break;
	    case MenuEnum.Itens:
			var tamanhoInventario = array_length(objInventario.itens);
			
			if (tamanhoInventario > 0) {
				reproduzirSFXUI(sndOpcaoSelecionada);
				codigoVerificado = objInventario.itens[opcaoSelecionada].codigo;
				var indice = array_find_index(Ficha.item, function(ficha) { return ficha.codigo == codigoVerificado; });
				
				if (indice) {
					prepararUsarItemBatalha(Ficha.item[indice]);
				}
			}
			
	        break;
	}

}