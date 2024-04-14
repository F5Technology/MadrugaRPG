function limparCampoBatalha() {				
	layer_set_visible("Tileset", true);
	instance_activate_object(objColisao);
	instance_activate_object(objPlayerOW);
	instance_activate_object(objInimigoOW);
	
	objPlayerOW.ficha = objPlayerBattle.ficha;
	
	instance_destroy();
	instance_destroy(objLevelUp);
	instance_destroy(objPlayerBattle);
	instance_destroy(objInimigoBattle);
	instance_destroy(objIconePlayerBattle);
	
	if (finalBatalha == FinalBatalhaEnum.Vitoria) {
	    instance_destroy(global.inimigoColidido);
	}
	
	var posicaoX = x;
	var posicaoY = y;
	global.emBatalha = false;	
	global.inimigoColidido = 0;
	
	instance_create_layer(posicaoX, posicaoY, "Main", objBattle);
}