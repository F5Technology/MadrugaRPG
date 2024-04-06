function prepararUsarItemBatalha(item) {
	objBattle.textoInfo = string_ext("Seu Madruga tomou um {0}!", [item.nome]);
	
	with (player) {
		image_index = 0;
		itemSelecionado = item;
		spriteAtual = sprMadrugaBattleUsandoItem;
		acaoAtual = AcaoBatalhaEnum.UsarItem;
		acao = posicionarParaAcao;
		alarm[0] = 30;
	}
	
	instance_destroy();
}