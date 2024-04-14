function finalizarBatalha(){
	switch (finalBatalha) {
	    case FinalBatalhaEnum.Vitoria:
			var player = personagensEmBatalha[0];
			
			player.vitoria = true;
			player.ficha.xp += xpAdquirido;
			player.image_index = 0;
			player.sprite_index = sprMadrugaBattleVitoria;
			objIconePlayerBattle.sprite_index = player.ficha.iconesBatalha.vitoria;
			
			if (player.ficha.xp >= player.ficha.maxXP) {
				var anel = player.ficha.anel;
				var xpAtual = player.ficha.xp - player.ficha.maxXP;
				
				with(Ficha) {
					Ficha.levelAtual++;
					atualizarFichasPlayer();
					player.ficha = Ficha.seuMadruga;
				}

				player.ficha.anel = anel;
				player.ficha.xp = xpAtual;
				 
				textoInfo = string_ext("Vitoria! Seu Madruga ganhou {0} xp, e ainda subiu para o level {1}", [string(xpAdquirido), string(player.ficha.level)]);
			} else {
				textoInfo = string_ext("Vitoria! Seu Madruga ganhou {0} xp", [string(xpAdquirido)]);
			}
			
			alarm[6] = 200;		
	        break;
	    case FinalBatalhaEnum.Derrota:
			alarm[5] = 60;
			
			pararMusica();
			var posicaoX = camera_get_view_x(view_camera[0]);
			var posicaoY = camera_get_view_y(view_camera[0]);
			
			layer_sequence_create("Effects", posicaoX, posicaoY, aniFadeIn);
	        break;
	    case FinalBatalhaEnum.Fuga:
			var tempo = 60;
			
			alarm[4] = tempo;
			trocarMusica(trackOverworld, tempo);
			iniciarCooldownInimigoOW(global.inimigoColidido);
			instance_create_layer(-10, -10, "Main", objTransicao);
	        break;
	}
}