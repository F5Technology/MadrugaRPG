function iniciarBatalha() {
		var inimigo = global.inimigoColidido;
		
		if (inimigo) {
			global.emBatalha = true;
			layer_set_visible("Tileset", false);
			instance_deactivate_object(objPlayerOW);
			instance_deactivate_object(objInimigoOW);
			posicionarObjetosBatalha();
			
		    with (inimigo) {
				//TODO: Criar e iniciar sistema de batalha por turno por aqui
			    //iniciarCooldownInimigoOW();
			}
		}
}