function IniciarTurno() {
	textoInfo = "";
	var personagemAtual = personagensEmBatalha[personagemEmTurno];
	
	if (personagemAtual.object_index == objPlayerBattle) {
		var voz = choose(vozApresentacao1, vozApresentacao2, vozApresentacao3, vozApresentacao4);
		
		reproduzirSFXVoz(voz);		
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