function exibirSpritePlayerOW() {
		var direcaoAtual = 0;
		var emMovimento = (baixo || cima || direita || esquerda);
		
		if (direcao == 0) {
		    direcaoAtual = DirecoesEnum.Leste;
		}
		else if (direcao > 0 && direcao < 90) {
		    direcaoAtual = DirecoesEnum.Nordeste;
		}
		else if (direcao == 90) {
		    direcaoAtual = DirecoesEnum.Norte;
		}
		else if (direcao > 90 && direcao < 180) {
		    direcaoAtual = DirecoesEnum.Noroeste;
		}
		else if (direcao == 180) {
		    direcaoAtual = DirecoesEnum.Oeste;
		}
		else if (direcao > 180 && direcao < 270) {
		    direcaoAtual = DirecoesEnum.Sudoeste;
		}
		else if (direcao == 270) {
		    direcaoAtual = DirecoesEnum.Sul;
		}
		else if (direcao > 270) {
		    direcaoAtual = DirecoesEnum.Sudeste;
		}
		
		switch (direcaoAtual) {
		    case DirecoesEnum.Leste:
				image_xscale = -1;
		        sprite_index = emMovimento ? sprOWPlayerAndandoLateral : sprOWPlayerParadoLateral;
		        break;
		    case DirecoesEnum.Nordeste:
				image_xscale = -1;
		        sprite_index = emMovimento ? sprOWPlayerAndandoDiagonalSuperior : sprOWPlayerParadoDiagonalSuperior;
		        break;
		    case DirecoesEnum.Norte:
				image_xscale = 1;
		        sprite_index = emMovimento ? sprOWPlayerAndandoCima : sprOWPlayerParadoCima;
		        break;
		    case DirecoesEnum.Noroeste:
				image_xscale = 1;
		        sprite_index = emMovimento ? sprOWPlayerAndandoDiagonalSuperior : sprOWPlayerParadoDiagonalSuperior;
		        break;
		    case DirecoesEnum.Oeste:
				image_xscale = 1;
		        sprite_index = emMovimento ? sprOWPlayerAndandoLateral : sprOWPlayerParadoLateral;
		        break;
		    case DirecoesEnum.Sudoeste:
				image_xscale = 1;
		        sprite_index = emMovimento ? sprOWPlayerAndandoDiagonalinferior : sprOWPlayerParadoDiagonalinferior;
		        break;
		    case DirecoesEnum.Sul:
				image_xscale = 1;
		        sprite_index = emMovimento ? sprOWPlayerAndandoBaixo : sprOWPlayerParadoBaixo;
		        break;
		    case DirecoesEnum.Sudeste:
				image_xscale = -1;
		        sprite_index = emMovimento ? sprOWPlayerAndandoDiagonalinferior : sprOWPlayerParadoDiagonalinferior;
		        break;
		}
}