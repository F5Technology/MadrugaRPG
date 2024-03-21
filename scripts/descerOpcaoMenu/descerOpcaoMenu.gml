function descerOpcaoMenu() {
	var limiteMaximo = 1;
	var dentroLimite = false;
	var tamanhoInventario = 0;
	
	switch (menuAtual) {
	     case MenuEnum.Principal:
			limiteMaximo = OpcaoMenuPauseEnum.Sair;
	        break;
		case MenuEnum.Itens:
			tamanhoInventario = array_length(objInventario.itens);
			limiteMaximo = tamanhoInventario > 0 ? tamanhoInventario-1 : 0;
	        break;
		case MenuEnum.Equipamentos:
			tamanhoInventario = array_length(objInventario.equipamentos);
			limiteMaximo = tamanhoInventario > 0 ? tamanhoInventario-1 : 0;
	        break;
	}
	
	if (opcaoSelecionada < limiteMaximo) {
	    opcaoSelecionada++;
		reproduzirSFXUI(sndHover);
	}
}