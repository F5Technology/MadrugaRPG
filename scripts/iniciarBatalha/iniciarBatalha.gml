function iniciarBatalha() {
		var inimigo = global.inimigoColidido;
		
		if (inimigo) {
		    with (inimigo) {
				//TODO: Criar e iniciar sistema de batalha por turno por aqui
			    iniciarCooldownInimigoOW();
			}
			
			global.inimigoColidido = 0;
		}
}