function defenderBatalha() {
	with(objBattle) {
		var pesonagemAtual = personagensEmBatalha[personagemEmTurno];
		
		fimTurno = true;
		pesonagemAtual.defendendo = true;
		pesonagemAtual.sprite_index = sprMadrugaBattleDefendendo;
	}
	
	instance_destroy();
}