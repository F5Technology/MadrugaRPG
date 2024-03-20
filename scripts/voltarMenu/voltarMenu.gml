function voltarMenu() {
	reproduzirSFXUI(sndFechar);
	
	if (menuAtual == MenuEnum.Principal) {
	    executarMenuPausa();
	}
	else {
		opcaoSelecionada = 0;
	    menuAtual = menuAnterior;
		menuAnterior = MenuEnum.Principal;
	}
}