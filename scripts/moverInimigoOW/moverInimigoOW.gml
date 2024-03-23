function moverInimigoOW() {
	var obtendoItem = global.obtendoItem;
	var playerDetectado = procurarPlayerInimigoOW();
	
	if (!playerDetectado && !obtendoItem) {
		image_speed = 1;
		var velocidade = 1;
		var distanciaEntrePontos = distance_to_point(destinoX, destinoY);
		
		if (distanciaEntrePontos > velocidade) {
		    direcao = point_direction(x, y, destinoX, destinoY);
			var valorVertical = lengthdir_y(velocidade, direcao);
			var valorHorizontal = lengthdir_x(velocidade, direcao);
			
			var hveloc = checarColisaoHorizontal(valorHorizontal);
			var vveloc = checarColisaoVertical(valorVertical);
			
			#region Checar Inversão de direcao
			
			//Caso ocorra uma colisão o inimigo começa a andar numa direção oposta
			if (hveloc == 0 && valorHorizontal != 0)  {
				//destinoX = destinoX * -1;
				var andandoParaEsquerda = direcao >= 90 && direcao <= 270;
				
				destinoX = andandoParaEsquerda ? room_width : 0;
			}
			
			if (vveloc == 0 && valorVertical != 0)  {
				//destinoY = destinoY * -1;
				var andandoParaBaixo = direcao >= 180 && direcao <= 360;
				
				destinoY = andandoParaBaixo ? 0 : room_height;
			}
			
			#endregion
			
			x += hveloc;
			y += vveloc;
		} else {
			definirPontoDirecaoInimigoOW();
		}
	}
}