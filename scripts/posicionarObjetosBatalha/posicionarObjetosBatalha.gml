function posicionarObjetosBatalha() {
	var personagem = 0;
	personagensEmBatalha = [];
	var cameraX = camera_get_view_x(view_camera[0]);
	var cameraY = camera_get_view_y(view_camera[0]);
	
	//Player
	var posicaoX = cameraX + 70;
	var posicaoY = cameraY + sprite_get_height(sprCenarioBattle) / 2;
	
	personagem = instance_create_depth(posicaoX, posicaoY, depth-10, objPlayerBattle);
	array_push(personagensEmBatalha, personagem);
	
	//Icone Player
	posicaoX = cameraX + 33;
	posicaoY = cameraY + sprite_get_height(sprCenarioBattle) - sprite_get_height(sprIconeMadrugaPadrao) - 1;
	instance_create_depth(posicaoX, posicaoY, depth-10, objIconePlayerBattle);
	
	for (var inimigo = 1; inimigo <= quantidadeInimigos; ++inimigo) {
		switch (inimigo) {
		    case 1:
		        posicaoX = cameraX + sprite_get_width(sprCenarioBattle) - 96;
				posicaoY = cameraY + sprite_get_height(sprCenarioBattle) / 2;
		        break;
		    case 2:
		        posicaoX = cameraX + sprite_get_width(sprCenarioBattle) - 48;
				posicaoY = cameraY + 65;
		        break;
		    case 3:
				posicaoX = cameraX + sprite_get_width(sprCenarioBattle) - 48;
		        posicaoY = cameraY + 100;
		        break;
		}
		
		personagem = instance_create_depth(posicaoX, posicaoY, depth-10, objInimigoBattle);	
		array_push(personagensEmBatalha, personagem);
	}
}