function equiparItem(){
	with (objMenuPausa) {
		var equipamento = objInventario.equipamentos[itemSelecionado];
	    
		if (equipamento.equipado) {
			equipamento.equipado = false;
		    fichaMadruga.anel = ItensEnum.Nenhum;
		}
		else {
			equipamento.equipado = true;
		    fichaMadruga.anel = ItensEnum.AnelDeFogo;
		}
		
		array_set(objInventario.equipamentos, itemSelecionado, equipamento);
		
		// Voltar ao menu anterior
		opcaoSelecionada = 0;
		menuAtual = menuAnterior;
		menuAnterior = MenuEnum.Principal;
		reproduzirSFXUI(sndEquipar);
	}
}