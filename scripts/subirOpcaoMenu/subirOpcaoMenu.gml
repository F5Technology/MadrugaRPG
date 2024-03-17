function subirOpcaoMenu(){
	if (opcaoSelecionada > OpcaoMenuPauseEnum.Itens) {
	    opcaoSelecionada--;
		reproduzirSFXUI(sndHoverMenu);
	}
}