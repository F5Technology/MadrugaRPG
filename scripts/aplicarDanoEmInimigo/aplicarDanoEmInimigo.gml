function aplicarDanoEmInimigo() {
	var dano = 0;
	var rangeDano = array_length(ataqueSelecionado.dano);
	
	if (rangeDano > 1) {
	    dano = round(random_range(ataqueSelecionado.dano[0], ataqueSelecionado.dano[1]));
	}
	else {
	    dano = ataqueSelecionado.dano[0];
	}
	
	inimigoSelecionado.ficha.hp -= dano;
	
	if (inimigoSelecionado.ficha.hp <= 0) {
	    inimigoSelecionado.ficha.hp = 0;
		inimigoSelecionado.morto = true;
		inimigoSelecionado.image_index = 0;
		inimigoSelecionado.spriteAtual = sprAranhaBattleMorrendo;

		var indice = array_find_index(objBattle.personagensEmBatalha, function(inimigo) { return inimigo == inimigoSelecionado; });
		
		if (indice) {
		    array_delete(objBattle.personagensEmBatalha, indice, 1);
		}
	} else {
		inimigoSelecionado.hit = true;
		inimigoSelecionado.alarm[0] = 60;
		inimigoSelecionado.image_index = 0;
		inimigoSelecionado.spriteAtual = sprAranhaBattleTomandoHit;
	}
	
	instance_create_depth(inimigoSelecionado.x,inimigoSelecionado. y, -9999999, objValorBatalha, {valor: dano, cor: #ffffff});
	
	inimigoSelecionado = 0;
}