function checarTurno() {
	var emBatalha = global.emBatalha;
	
	if (emBatalha && fimTurno) {
		var fimBatalha = checarFimBatalha();
		
		if (fimBatalha) {
			alarm[3] = 60;		    
			textoInfo = "";
			fimTurno = false;
		} else {
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