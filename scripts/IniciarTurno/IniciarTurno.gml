function IniciarTurno() {
	textoInfo = "";
	var pesonagemAtual = personagensEmBatalha[personagemEmTurno];
	
	if (pesonagemAtual.object_index == objPlayerBattle) {
		pesonagemAtual.defendendo = false;
		pesonagemAtual.spriteAtual = sprMadrugaBattleIdle;
	    instance_create_depth(x, y, depth-20, objOpcoesBattle, {player: pesonagemAtual});
	}
	else {
		pesonagemAtual.selecionado = true;
		alarm[2] = 120;
	}
}