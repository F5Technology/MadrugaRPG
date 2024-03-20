function exibirOpcoesMenuPause(){
	switch (menuAtual) {
	    case MenuEnum.Principal:
	        renderOpcoesMenuPrincipal();
	        break;
	    case MenuEnum.Itens:
	        renderListaItens();
	        break;
	    case MenuEnum.Equipamentos:
	        renderListaEquipmentos();
	        break;
		case MenuEnum.Confirmacao:
	        renderModalConfirmacao();
	        break;
	}
}