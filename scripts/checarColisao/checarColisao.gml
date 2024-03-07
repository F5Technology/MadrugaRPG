function checarColisaoHorizontal(hveloc){
	var velocidade = hveloc;
	var reproduzirAudio = true;
	
	if(place_meeting(x + velocidade, y, objColisao)) {		
		while (!place_meeting(x + sign(velocidade), y, objColisao)) {
			x += sign(velocidade);
		}
		
		velocidade = 0;
	} else {
		reproduzirAudio = false;
	}
	
	checarSomColisao(reproduzirAudio);
	
	return velocidade;
}

function checarColisaoVertical(vveloc){
	var velocidade = vveloc;
	var reproduzirAudio = true;
	
	if(place_meeting(x, y + velocidade, objColisao)) {		
		while (!place_meeting(x, y + sign(velocidade), objColisao)) {
			y += sign(velocidade);
		}
		
		velocidade = 0;
	} else {
		reproduzirAudio = false;
	}
	
	checarSomColisao(reproduzirAudio);
	
	return velocidade;
}