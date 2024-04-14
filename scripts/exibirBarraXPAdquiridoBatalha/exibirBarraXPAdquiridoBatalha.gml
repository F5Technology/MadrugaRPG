function exibirBarraXPAdquiridoBatalha(){
	var posicaoX = x - (sprite_width / 2) + 2;
	var posicaoY = y + (sprite_height / 2) + 1;		
	var valorXP = levelBarraXP != ficha.level ? maxBarraXP : ficha.xp;
	
	var tamanhoPreenchimento = sprite_get_width(sprPreenchimentoXP) - ((valorXP/maxBarraXP) * sprite_get_width(sprPreenchimentoXP));
	
	draw_set_color(c_white);
	draw_sprite(sprBarraXPVazio, 0, posicaoX, posicaoY);
	
	if (tamanhoPreenchimento <  tamanhoBarraXP) {
		tamanhoBarraXP -= 0.5;
		
		if (tamanhoPreenchimento >= tamanhoBarraXP && levelBarraXP != ficha.level) {
			levelBarraXP = ficha.level;
			maxBarraXP = ficha.maxXP;
		    tamanhoBarraXP = sprite_get_width(sprPreenchimentoXP);
			
			reproduzirSFXBattle(sfxLevelUP);
			instance_create_depth(posicaoX, posicaoY, depth - 1, objLevelUp);
		}
	}
	
	draw_sprite_part(
		sprPreenchimentoXP, 0,
		tamanhoBarraXP, 0, 
		sprite_get_width(sprPreenchimentoXP),
		sprite_get_height(sprPreenchimentoXP),
		posicaoX + 10, 
		posicaoY + 1
	);
}