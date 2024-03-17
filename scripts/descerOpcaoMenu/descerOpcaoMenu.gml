function descerOpcaoMenu(){
	if (opcaoSelecionada < OpcaoMenuPauseEnum.Sair) {
	    opcaoSelecionada++;
		reproduzirSFXUI(sndHoverMenu);
	}
}