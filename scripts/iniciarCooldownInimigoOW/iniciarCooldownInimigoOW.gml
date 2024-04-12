function iniciarCooldownInimigoOW(inimigo) {
	inimigo.alarm[2] = 100;
	inimigo.cooldown = true;
	inimigo.image_alpha = 0.5;
	inimigo.emMovimento = false;
	inimigo.executarIA = function() {};
}