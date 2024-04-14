function aplicarDanoEmInimigoBatalha() {
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
		reproduzirSFXBattle(sfxInimigoMorrendoV3);

		var indice = array_find_index(objBattle.personagensEmBatalha, function(inimigo) { return inimigo == inimigoSelecionado; });
		
		if (indice) {
		    array_delete(objBattle.personagensEmBatalha, indice, 1);
		}
	} else {
		inimigoSelecionado.hit = true;
		inimigoSelecionado.alarm[0] = 50;
		inimigoSelecionado.image_index = 0;
		reproduzirSFXBattle(sfxAtaqueMadruga);
		
		if (ataqueSelecionado.tipo == AtaquesEnum.Queimadura) {
			inimigoSelecionado.spriteAtual = sprAranhaBattleQueimando;
			instance_create_depth(inimigoSelecionado.x - 22, inimigoSelecionado.y - 15, -9999999, objQueimadura);
		}
		else {
			inimigoSelecionado.spriteAtual =  sprAranhaBattleTomandoHit;
		}
	}
	
	instance_create_depth(inimigoSelecionado.x,inimigoSelecionado. y, -9999999, objValorBatalha, {valor: dano, cor: #ffffff});
	
	//Checar se é necessario testar status queimado
	testarAtribuicaoStatusQueimado();
	
	inimigoSelecionado = 0;
}