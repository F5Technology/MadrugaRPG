function IniciarTurno() {
	textoInfo = "";
	var personagemAtual = personagensEmBatalha[personagemEmTurno];
	
	if (personagemAtual.object_index == objPlayerBattle) {
		personagemAtual.defendendo = false;
		personagemAtual.sprite_index = sprMadrugaBattleIdle;
	    instance_create_depth(x, y, depth-20, objOpcoesBattle, {player: personagemAtual});
	}
	else {
		if (personagemAtual.status == StatusBatalhaEnum.Queimado) {
			textoInfo = string_ext(ataqueSelecionado.mensagem, [personagemAtual.ficha.nome]);
			inimigoSelecionado = personagemAtual;
		    aplicarDanoEmInimigoBatalha();
			
			if (personagemAtual.morto) {
			    inimigoSelecionado = 0;
				playerPronto = true;
			}
			else {
				inimigoSelecionado = personagemAtual;
				alarm[2] = 50;
			}
		} else {
			definirAcaoInimigoBatalha(personagemAtual);
		}
	}
}