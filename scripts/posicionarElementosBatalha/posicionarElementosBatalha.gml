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
		
		if (object_exists(objPlayerBattle)) {
			tamanhoPreenchimento = (objPlayerBattle.ficha.hp/objPlayerBattle.ficha.maxHP) * sprite_get_width(sprPreenchimentoHP);
			
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
		
		//PP player
		posicaoY += sprite_get_height(sprBarraHPVazio);
		draw_sprite(sprBarraPPVazio, 0, posicaoX, posicaoY);
		
		if (object_exists(objPlayerBattle)) {
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
		
		#region Elementos temporarios somente para checar o posicionamento dos elementos
		
		////HUD Opções
		//posicaoX = camera_get_view_x(view_camera[0]) + 73;
		//posicaoY = camera_get_view_y(view_camera[0]) + sprite_get_height(sprCenarioBattle) / 2 + 4;
		//draw_sprite(sprMoldeOpcoesBattle, 0, posicaoX, posicaoY);		
		
		////HP Inimigo 1
		//posicaoX =  camera_get_view_x(view_camera[0]) + sprite_get_width(sprCenarioBattle) - 116;
		//posicaoY =  camera_get_view_y(view_camera[0]) + sprite_get_height(sprCenarioBattle) / 2 + 16;
		//draw_sprite(sprBarraHPVazio, 0, posicaoX, posicaoY);
		
		////HP Inimigo 2
		//posicaoX = camera_get_view_x(view_camera[0]) + sprite_get_width(sprCenarioBattle) - 68;
		//posicaoY = camera_get_view_y(view_camera[0]) + 65  + 16;
		//draw_sprite(sprBarraHPVazio, 0, posicaoX, posicaoY);
		
		////Inimigo 3
		//posicaoY = camera_get_view_y(view_camera[0]) + 100 + 16;
		//draw_sprite(sprBarraHPVazio, 0, posicaoX, posicaoY);
		
		////Caixa info
		//var texto = "3 Aranhas gigantes apareceram!";
		//var altura = string_height(texto) * 1.2;
		//var largura = string_width(texto) * 0.65;
		//posicaoX =  camera_get_view_x(view_camera[0]) + sprite_get_width(sprCenarioBattle) / 2 - largura / 2;
		//posicaoY =  camera_get_view_y(view_camera[0]) + 10;
		
		//draw_sprite_stretched(sprCaixa, 0, posicaoX, posicaoY, largura, altura);
		
		//posicaoX += 6;
		//posicaoY += 5;
		//draw_set_color(c_white);
		//draw_set_font(fntIInfoNome);
		//draw_text_transformed(posicaoX, posicaoY, texto, 0.5, 0.5, image_angle);
		
		#endregion
	}
}