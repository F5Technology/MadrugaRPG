function aplicarEfeitosPlayerBattle() {
	draw_sprite_ext(sprSombraMadrugaBattle, image_index, x, y + 20, 1,1, 0, c_white, image_alpha);
	
	if ((vitoria || hit) && checarFImAnimacao()) {
	   image_speed = 0;
	}
	
	if (vitoria) {
		exibirBarraXPAdquiridoBatalha();
	}
	
	//Profundidade
	if (objBattle.finalBatalha == FinalBatalhaEnum.Derrota) {
		depth = objBattle.depth - 1;
	}
	else if (instance_exists(objOpcoesBattle)) {
		depth = objOpcoesBattle.depth + 1;
	}
	else {
		depth = -y;
	}
}