function aplicarDanoEmPlayerBatalha(){
	var dano = 0;
	var rangeDano = array_length(ataqueSelecionado.dano);
	
	if (rangeDano > 1) {
	    dano = round(random_range(ataqueSelecionado.dano[0], ataqueSelecionado.dano[1]));
	}
	else {
	    dano = ataqueSelecionado.dano[0];
	}
	
	if (playerSelecionado.defendendo) {
	    dano -= playerSelecionado.ficha.defesa;
	}
	
	playerSelecionado.ficha.hp -= dano;
	
	if (playerSelecionado.ficha.hp <= 0) {
		playerSelecionado.morto = true;
		playerSelecionado.image_index = 0;
		playerSelecionado.sprite_index = sprMadrugaBattleMorto;
		
		objBattle.playerPronto = true;
	    objIconePlayerBattle.image_index = 0;
		objIconePlayerBattle.sprite_index = sprIconeMadrugaMorto;
	}
	else {		
		playerSelecionado.hit = true;
		playerSelecionado.alarm[2] = 50;
		playerSelecionado.image_index = 0;
		playerSelecionado.sprite_index = playerSelecionado.defendendo ? sprMadrugaBattleTomandoHitDefendendo : sprMadrugaBattleTomandoHitNormal;
		
		objIconePlayerBattle.hit = true;
		objIconePlayerBattle.image_index = 0;
		objIconePlayerBattle.sprite_index = sprIconeMadrugaDanoAnimado;
	}
	
	instance_create_depth(playerSelecionado.x,playerSelecionado. y, -9999999, objValorBatalha, {valor: dano, cor: #ffffff});
	
	playerSelecionado = 0;
}