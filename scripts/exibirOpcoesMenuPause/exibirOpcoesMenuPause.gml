function exibirOpcoesMenuPause(){
	switch (menuAtual) {
	    case MenuEnum.Principal:
	        renderOpcoesMenuPrincipal();
	        break;
	    case MenuEnum.Itens:
	        renderListaItensMenuPausa();
	        break;
	    case MenuEnum.Equipamentos:
	        renderListaEquipmentosMenuPausa();
	        break;
		case MenuEnum.Confirmacao:
	        renderModalConfirmacao();
	        break;
	}
}