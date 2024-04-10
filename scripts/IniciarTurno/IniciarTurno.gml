function IniciarTurno() {
	textoInfo = "";
	var personagemAtual = personagensEmBatalha[personagemEmTurno];
	
	if (personagemAtual.object_index == objPlayerBattle) {
		personagemAtual.defendendo = false;
		personagemAtual.sprite_index = sprMadrugaBattleIdle;
	    instance_create_depth(x, y, depth-20, objOpcoesBattle, {player: personagemAtual});
	}
	else {
		definirAcaoInimigoBatalha(personagemAtual);
	}
}