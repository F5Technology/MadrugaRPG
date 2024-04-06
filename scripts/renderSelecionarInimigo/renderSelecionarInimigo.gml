function renderSelecionarInimigo() {
	var tamanhoLista = array_length(listaInimigos);
	
	for (var i = 0; i < tamanhoLista; ++i) {
	    var inimigoSelecionado = listaInimigos[i];
		
		inimigoSelecionado.selecionado = opcaoSelecionada == i;
		
		if (inimigoSelecionado.selecionado) {
			with(inimigoSelecionado) {
				exibirHPInimigo();
			}
		}
	}
}