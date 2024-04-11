function deixarProntoPlayerBatalha() {
	hit = false;
	image_speed = 1;
	sprite_index = defendendo ? sprMadrugaBattleDefendendo : sprMadrugaBattleIdle;
	
	objIconePlayerBattle.hit = false;
	objIconePlayerBattle.image_speed = 1;
	objIconePlayerBattle.sprite_index = sprIconeMadrugaPadrao;
	
	objBattle.playerPronto = true;
}