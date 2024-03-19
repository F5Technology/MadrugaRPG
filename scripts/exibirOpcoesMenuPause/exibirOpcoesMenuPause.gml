function exibirOpcoesMenuPause(){
	switch (menuAtual) {
	    case MenuEnum.Principal:
	        renderOpcoesMenuPrincipal();
	        break;
		case MenuEnum.Confirmacao:
	        renderModalConfirmacao();
	        break;
	}
}