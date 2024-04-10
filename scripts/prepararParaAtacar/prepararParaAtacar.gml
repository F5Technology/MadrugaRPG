function prepararParaAtacar(inimigo) {
	with (player) {
		objBattle.textoInfo = string_ext(ataqueSelecionado.mensagem, [inimigo.ficha.nome]);
		
		image_index = 0;
		inimigoSelecionado = inimigo;
		acaoAtual = AcaoBatalhaEnum.Atacar;
		inimigoSelecionado.selecionado = false;
		
		if (ataqueSelecionado.tipo ==  AtaquesEnum.Normal) {
			alarm[0] = 40;
			acao = posicionarParaAcao;
			sprite_index = sprMadrugaBattleDashPraFrente;
			move_towards_point(inimigoSelecionado.x - (inimigoSelecionado.sprite_width / 2) - 3, inimigoSelecionado.y - 10, 5);
		} 
		else if (ataqueSelecionado.tipo ==  AtaquesEnum.BastaoFogo) {
			acao = executarAcao;
			ficha.pp -= ataqueSelecionado.custoPP;
			sprite_index = sprMadrugaBattleLancandoBastaoFogo;
		}
	}
	
	//Destroy o menu de opções
	instance_destroy();
}