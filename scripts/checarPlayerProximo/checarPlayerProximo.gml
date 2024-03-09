function checarPlayerProximo() {
	var distancia = 5;
	
	if (
		//Verificar proximidade horizontal
		place_meeting(x + distancia, y, objPlayer) ||
		place_meeting(x - distancia, y, objPlayer)  ||
		
		//Verificar proximidade vertical
		place_meeting(x, y  + distancia, objPlayer) ||
		place_meeting(x, y - distancia, objPlayer) 
	) {
	    permiteAbertura = true;
	} else {
	    permiteAbertura = false;
	}
}