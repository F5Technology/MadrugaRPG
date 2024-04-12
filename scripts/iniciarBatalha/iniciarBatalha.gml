function iniciarBatalha() {
		var inimigo = global.inimigoColidido;
		
		if (inimigo) {
			quantidadeInimigos = inimigo.quantidadeInimigos > 3 ? 3 : inimigo.quantidadeInimigos;
			
			global.emBatalha = true;			
			posicionarObjetosBatalha();
			layer_set_visible("Tileset", false);
			tamanhoBarraHPVermelho = (objPlayerOW.ficha.hp/objPlayerOW.ficha.maxHP) * sprite_get_width(sprPreenchimentoHP);
			textoInfo = quantidadeInimigos > 1 ? string_ext("{0} Aranhas apareceram!" , [string(quantidadeInimigos)]) : "Uma aranha apareceu!";
						
			instance_deactivate_object(objColisao);
			instance_deactivate_object(objPlayerOW);
			instance_deactivate_object(objInimigoOW);
			
			alarm[1] = 120;
		}
}