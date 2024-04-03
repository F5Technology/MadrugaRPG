function iniciarBatalha() {
		var inimigo = global.inimigoColidido;
		
		if (inimigo) {
			global.emBatalha = true;
			posicionarObjetosBatalha();
			layer_set_visible("Tileset", false);
			instance_deactivate_object(objPlayerOW);
			instance_deactivate_object(objInimigoOW);
			textoInfo = "3 Aranhas gigantes apareceram!";
			
			alarm[1] = 120;
			
		    with (inimigo) {
				//TODO: Criar e iniciar sistema de batalha por turno por aqui
			    //iniciarCooldownInimigoOW();
			}
		}
}