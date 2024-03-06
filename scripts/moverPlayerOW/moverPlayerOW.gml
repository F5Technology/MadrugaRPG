function moverPlayerOW() {
		var emMovimento = (baixo || cima || direita || esquerda);
		
		if (emMovimento) {
			var movimentoVertical = (baixo - cima);
			var movimentoHorizontal = (direita - esquerda);
			var velocidade = (direita && esquerda) || (baixo && cima) ? 0 : 2; 
			
			direcao = point_direction(x, y, x + movimentoHorizontal, y + movimentoVertical);
			
			movimentoVertical = lengthdir_y(velocidade, direcao);
			movimentoHorizontal = lengthdir_x(velocidade, direcao);
			
			y += movimentoVertical;
			x += movimentoHorizontal;
		}
}