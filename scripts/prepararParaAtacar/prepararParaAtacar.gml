function prepararParaAtacar(inimigo) {
	with (player) {
		objBattle.textoInfo = string_ext(ataqueSelecionado.mensagem, [inimigo.ficha.nome]);
		
		image_index = 0;
		inimigoSelecionado = inimigo;
		inimigoSelecionado.selecionado = false;
		acaoAtual = AcaoBatalhaEnum.Atacar;
		acao = posicionarParaAcao;
		alarm[0] = 40;
		
		if (ataqueSelecionado.tipo ==  AtaquesEnum.Normal) {
			spriteAtual = sprMadrugaBattleDashPraFrente;
			move_towards_point(inimigoSelecionado.x - (inimigoSelecionado.sprite_width / 2) - 3, inimigoSelecionado.y - 10, 6);
		} 
		else if (ataqueSelecionado.tipo ==  AtaquesEnum.BastaoFogo) {
			//TODO: Sprite lançando o bastao de fogo
		}
	}
	
	instance_destroy();
}