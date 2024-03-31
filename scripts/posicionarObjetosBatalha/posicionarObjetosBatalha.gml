function posicionarObjetosBatalha() {
	var cameraX = camera_get_view_x(view_camera[0]);
	var cameraY = camera_get_view_y(view_camera[0]);
	
	//Player
	var posicaoX = cameraX + 70;
	var posicaoY = cameraY + sprite_get_height(sprCenarioBattle) / 2;
	
	instance_create_depth(posicaoX, posicaoY, depth-10, objPlayerBattle);
	
	//Icone Player
	posicaoX = cameraX + 33;
	posicaoY = cameraY + sprite_get_height(sprCenarioBattle) - sprite_get_height(sprIconeMadrugaPadrao) - 1;
	instance_create_depth(posicaoX, posicaoY, depth-10, objIconePlayerBattle);
	
	//Inimigo 1
	posicaoX = cameraX + sprite_get_width(sprCenarioBattle) - 96;
	posicaoY = cameraY + sprite_get_height(sprCenarioBattle) / 2;
	instance_create_depth(posicaoX, posicaoY, depth-10, objInimigoBattle);
	
	//Inimigo 2
	posicaoX = cameraX + sprite_get_width(sprCenarioBattle) - 48;
	posicaoY = cameraY + 65;
	instance_create_depth(posicaoX, posicaoY, depth-10, objInimigoBattle);
	
	//Inimigo 3
	posicaoY = cameraY + 100;
	instance_create_depth(posicaoX, posicaoY, depth-10, objInimigoBattle);
}