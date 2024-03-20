function descerOpcaoMenu() {
	var dentroLimite = false;
	
	switch (menuAtual) {
	     case MenuEnum.Principal:
			dentroLimite = (opcaoSelecionada < OpcaoMenuPauseEnum.Sair) 
	        break;
	     case MenuEnum.Confirmacao:
			dentroLimite = (opcaoSelecionada < 1)
	        break;
		case MenuEnum.Itens:
			var tamanhoInventario = array_length(objInventario.itens);
			var limite = tamanhoInventario > 0 ? tamanhoInventario-1 : 0;
			
			dentroLimite =  (opcaoSelecionada < limite);
	        break;
	}
	
	if (dentroLimite) {
	    opcaoSelecionada++;
		reproduzirSFXUI(sndHover);
	}
}