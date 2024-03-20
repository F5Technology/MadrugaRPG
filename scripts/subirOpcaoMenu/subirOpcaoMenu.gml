function subirOpcaoMenu(){	
	var dentroLimite = false;
	
	switch (menuAtual) {
	     case MenuEnum.Principal:
			dentroLimite = (opcaoSelecionada > OpcaoMenuPauseEnum.Itens);
	        break;
	     case MenuEnum.Confirmacao:
			dentroLimite =  (opcaoSelecionada > 0);
	        break;
	     case MenuEnum.Itens:
			var tamanhoInventario = array_length(objInventario.itens);
			
			dentroLimite =  (tamanhoInventario > 0 && opcaoSelecionada > 0);
	        break;
	}
	
	if (dentroLimite) {
	    opcaoSelecionada--;
		reproduzirSFXUI(sndHover);
	}
}