function checarFimBatalha(){
	var fimBatalha = false;
	
	if (quantidadeInimigos == 0) {
		fimBatalha = true;
	    finalBatalha = FinalBatalhaEnum.Vitoria;
	}
	else {
		var player = personagensEmBatalha[0];
		
		if (player.morto) {
			fimBatalha = true;
			finalBatalha = FinalBatalhaEnum.Derrota;
			textoInfo = "Seu Madruga foi derrotado em combate!"
		}
		else if (player.acaoAtual == AcaoBatalhaEnum.Fugir) {
			fimBatalha = true;
			finalBatalha = FinalBatalhaEnum.Fuga;
		}
	}
	
	return fimBatalha;
}