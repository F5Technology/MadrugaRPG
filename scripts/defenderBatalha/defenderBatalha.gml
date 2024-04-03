function defenderBatalha() {
	with(objBattle) {
		var pesonagemAtual = personagensEmBatalha[personagemEmTurno];
		
		fimTurno = true;
		pesonagemAtual.defendendo = true;
		pesonagemAtual.spriteAtual = sprMadrugaBattleDefendendo;
	}
	
	instance_destroy();
}