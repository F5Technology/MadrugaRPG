function checarTurno() {
	var emBatalha = global.emBatalha;
	
	if (emBatalha) {
		if (fimTurno) {
			var limiteIndicePersonagens = array_length(personagensEmBatalha) - 1;
			
		    fimTurno = false;			
			personagemEmTurno++;
			
			if (personagemEmTurno > limiteIndicePersonagens) {
			    personagemEmTurno = 0;
			}
			
			//alarm[1] = 120;
			IniciarTurno();
		}
	}
}