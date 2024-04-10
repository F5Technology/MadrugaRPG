function definirAcaoInimigoBatalha(inimigo) {		
		var listaPlayers = array_filter(objBattle.personagensEmBatalha, 
		function(personagem, index) { 
			return personagem.object_index == objPlayerBattle  && !personagem.morto
		})
		
		if (array_length(listaPlayers) > 0) {
			with (inimigo) {
				var indicePlayer = random(array_length(listaPlayers) - 1);
				var indiceAtaque = random(array_length(ficha.ataques) - 1);
				
				playerSelecionado = listaPlayers[indicePlayer];
				ataqueSelecionado = ficha.ataques[indiceAtaque];
				
				objBattle.textoInfo = string_ext(ataqueSelecionado.mensagem, [playerSelecionado.ficha.nome]);
				
				alarm[1] = 40;
				image_index = 0;
				acao = posicionarParaAcao;
				acaoAtual = AcaoBatalhaEnum.Atacar;
				spriteAtual = sprAranhaBattleDashPraFrente;
				move_towards_point(playerSelecionado.x + (playerSelecionado.sprite_width / 2), playerSelecionado.y + 10, 5);
			}
		} else {
			inimigo.selecionado = true;
			alarm[2] = 120;
		}
}