function iniciarBatalha() {
		var inimigo = global.inimigoColidido;
		
		if (inimigo) {
			quantidadeInimigos =  inimigo.quantidadeInimigos;
			
			if (quantidadeInimigos <= 0) {
				quantidadeInimigos = 1;
			}
			else if (quantidadeInimigos > 3) {
			    quantidadeInimigos = 3;
			}
			
			global.emBatalha = true;			
			posicionarObjetosBatalha();
			layer_set_visible("Tileset", false);
			tamanhoBarraHPVermelho = (objPlayerOW.ficha.hp/objPlayerOW.ficha.maxHP) * sprite_get_width(sprPreenchimentoHP);
			textoInfo = quantidadeInimigos > 1 ? string_ext("{0} Aranhas apareceram!" , [string(quantidadeInimigos)]) : "Uma aranha apareceu!";
						
			instance_deactivate_object(objEscada);
			instance_deactivate_object(objColisao);
			instance_deactivate_object(objPlayerOW);
			instance_deactivate_object(objInimigoOW);
			
			alarm[1] = 120;
		}
}