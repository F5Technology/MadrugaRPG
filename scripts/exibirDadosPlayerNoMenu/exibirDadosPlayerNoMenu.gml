function exibirDadosPlayerNoMenu() {
		var padding = 12; // Para moldura
		var marginTop = 1; //Para cada info
		var limiteMaximoXP = 27;
		var limiteMinimoXP = 23.76;
		
		var tamanhoMinimoPP = 2;
		var tamanhoMinimoHP = 0.86;
		var escalaDadoNumerico = 0.35;
		var tamanhoPreenchimento = 0;
		var dadoNumerico = string_ext("Lv.  {0}", [fichaMadruga.level]);
		
		var posicaoY = y + padding;
		var posicaoX = x + sprite_get_width(sprIconeMadrugaParado) + padding + 3;
		var posicaoXDadoNumerico = x + sprite_get_width(sprMolduraMenu) - padding - 20;
		
		//Nome
		draw_set_color(c_white);
		draw_set_font(fntIInfoNome);
		draw_text_transformed(posicaoX, posicaoY, fichaMadruga.nome, 0.5, 0.5, image_angle);
		
		//Level		
		draw_set_color(c_yellow);
		draw_set_font(fntDadoMenuPausa);
		draw_text_transformed(posicaoXDadoNumerico, posicaoY + 2, dadoNumerico, escalaDadoNumerico, escalaDadoNumerico, image_angle);
		
		//HP
		draw_set_color(c_white);
		posicaoY +=  (string_height(fichaMadruga.nome) * 0.5) + marginTop;
		draw_sprite(sprBarraHPVazio, 0, posicaoX, posicaoY);
		
		tamanhoPreenchimento = (fichaMadruga.hp/fichaMadruga.maxHP) * sprite_get_width(sprPreenchimentoHP);
		
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
		
		draw_set_color(#8CD612);
		dadoNumerico = string_ext("{0} / {1}", [fichaMadruga.hp, fichaMadruga.maxHP]);
		draw_text_transformed(posicaoXDadoNumerico, posicaoY, dadoNumerico, escalaDadoNumerico, escalaDadoNumerico, image_angle);
		
		//PP
		draw_set_color(c_white);
		posicaoY += sprite_get_height(sprBarraHPVazio) + marginTop;
		draw_sprite(sprBarraPPVazio, 0, posicaoX, posicaoY);
		
		tamanhoPreenchimento = (fichaMadruga.pp/fichaMadruga.maxPP) * sprite_get_width(sprPreenchimentoPP);
		
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
		
		draw_set_color(#98DCFF);
		dadoNumerico = string_ext("{0} / {1}", [fichaMadruga.pp, fichaMadruga.maxPP]);
		draw_text_transformed(posicaoXDadoNumerico, posicaoY, dadoNumerico, escalaDadoNumerico, escalaDadoNumerico, image_angle);
		
		//XP
		draw_set_color(c_white);
		posicaoY += sprite_get_height(sprBarraPPVazio) + marginTop;
		draw_sprite(sprBarraXPVazio, 0, posicaoX, posicaoY);
		
		tamanhoPreenchimento = sprite_get_width(sprPreenchimentoXP) - ((fichaMadruga.xp/fichaMadruga.maxXP) * sprite_get_width(sprPreenchimentoXP));
		
		if (tamanhoPreenchimento > limiteMinimoXP && tamanhoPreenchimento < limiteMaximoXP) {
		    tamanhoPreenchimento = limiteMinimoXP;
		}
		
		draw_sprite_part(
			sprPreenchimentoXP, 0,
			tamanhoPreenchimento, 0, 
			sprite_get_width(sprPreenchimentoXP),
			sprite_get_height(sprPreenchimentoXP),
			posicaoX + 10, 
			posicaoY + 1
		);
		
		draw_set_color(#A675FE);
		dadoNumerico = string_ext("{0} / {1}", [fichaMadruga.xp, fichaMadruga.maxXP]);
		draw_text_transformed(posicaoXDadoNumerico, posicaoY, dadoNumerico, escalaDadoNumerico, escalaDadoNumerico, image_angle);
}