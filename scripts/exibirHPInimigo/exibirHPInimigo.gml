function exibirHPInimigo() {
		var posicaoX = x - (sprite_width / 2.4);
		var posicaoY = y + 15;
		
		//Barra de HP Vazia
		draw_sprite(sprBarraHPVazio, 0, posicaoX, posicaoY);
		
		//Preenchimento HP
		var tamanhoMinimoHP = 0.86;
		var tamanhoPreenchimento = (ficha.hp/ficha.maxHP) * sprite_get_width(sprPreenchimentoHP);
		
		if (tamanhoPreenchimento < tamanhoMinimoHP && tamanhoPreenchimento > 0) {
		    tamanhoPreenchimento = tamanhoMinimoHP;
		}
		
		draw_sprite_part(
			sprPreenchimentoHP, 
			0, 0, 0,
			tamanhoPreenchimento, 
			sprite_get_height(sprPreenchimentoHP),
			posicaoX + 10, 
			posicaoY
		);
}