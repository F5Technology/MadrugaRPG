function posicionarElementosBatalha() {
	var emBatalha = global.emBatalha;
	
	if (emBatalha) {
		var tamanhoMinimoPP = 2;
		var tamanhoMinimoHP = 0.86;
		var tamanhoPreenchimento = 0;
		var posicaoX = camera_get_view_x(view_camera[0]);
		var posicaoY = camera_get_view_y(view_camera[0]);
		
	    // Background
		draw_sprite(sprCenarioBattle, 0, posicaoX, posicaoY);
		
		//Moldura Status personagem
		posicaoX += 32;
		posicaoY += sprite_get_height(sprCenarioBattle) - sprite_get_height(sprMolduraStatusPlayer);
		draw_sprite(sprMolduraStatusPlayer, 0, posicaoX, posicaoY);
		
		//HP player
		posicaoX += sprite_get_width(sprIconeMadrugaPadrao) + 1;
		posicaoY += 20;
		draw_sprite(sprBarraHPVazio, 0, posicaoX, posicaoY);
		
		if (instance_exists(objPlayerBattle)) {
			tamanhoPreenchimento = (objPlayerBattle.ficha.hp/objPlayerBattle.ficha.maxHP) * sprite_get_width(sprPreenchimentoHP);
			
			if (tamanhoPreenchimento < tamanhoMinimoHP && tamanhoPreenchimento > 0) {
			    tamanhoPreenchimento = tamanhoMinimoHP;
			}
			
			if (tamanhoPreenchimento < tamanhoBarraHPVermelho) {
			    tamanhoBarraHPVermelho -= (tamanhoBarraHPVermelho - tamanhoPreenchimento) * 0.1;
			}
			
			draw_sprite_part(
				sprPreenchimentoHPVermelho, 
				0, 0, 0,
				tamanhoBarraHPVermelho, 
				sprite_get_height(sprPreenchimentoHP),
				posicaoX + 10, 
				posicaoY
			);
			
			draw_sprite_part(
				sprPreenchimentoHP, 
				0, 0, 0,
				tamanhoPreenchimento, 
				sprite_get_height(sprPreenchimentoHP),
				posicaoX + 10, 
				posicaoY
			);
		}
		
		//PP player
		posicaoY += sprite_get_height(sprBarraHPVazio);
		draw_sprite(sprBarraPPVazio, 0, posicaoX, posicaoY);
		
		if (instance_exists(objPlayerBattle)) {
			tamanhoPreenchimento = (objPlayerBattle.ficha.pp/objPlayerBattle.ficha.maxPP) * sprite_get_width(sprPreenchimentoPP);
			
			if (tamanhoPreenchimento < tamanhoMinimoPP && tamanhoPreenchimento > 0) {
			    tamanhoPreenchimento = tamanhoMinimoPP;
			}
			
			draw_sprite_part(
				sprPreenchimentoPP,
				0, 0, 0, 
				tamanhoPreenchimento, 
				sprite_get_height(sprPreenchimentoPP), 
				posicaoX + 10, 
				posicaoY
			);
		}
	}
}