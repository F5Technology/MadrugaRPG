function aplicarDanoEmInimigo() {
	var dano = 0;
	var rangeDano = array_length(ataqueSelecionado.dano);
	
	if (rangeDano > 1) {
	    dano = round(random_range(ataqueSelecionado.dano[0], ataqueSelecionado.dano[1]));
	}
	else {
	    dano = ataqueSelecionado.dano[0];
	}
	
	inimigoSelecionado.hit = true;
	inimigoSelecionado.alarm[0] = 30;
	inimigoSelecionado.image_index = 0;
	inimigoSelecionado.spriteAtual = sprAranhaBattleTomandoHit;
	inimigoSelecionado.ficha.hp -= dano;
	
	if (inimigoSelecionado.ficha.hp < 0) {
	    inimigoSelecionado.ficha.hp = 0;
	}
	
	ficha.pp -= ataqueSelecionado.custoPP;
	
	if (ficha.pp < 0) {
	    ficha.pp = 0;
	}
	
	instance_create_depth(inimigoSelecionado.x,inimigoSelecionado. y, -9999999, objValorBatalha, {valor: dano, cor: #ffffff});
	
	inimigoSelecionado = 0;
}