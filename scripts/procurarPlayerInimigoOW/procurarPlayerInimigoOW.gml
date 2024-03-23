function procurarPlayerInimigoOW() {
	var raioVisao = 60;
	var playerDetectado = false;
	var distanciaPlayer = distance_to_object(objPlayerOW);
	
	if (distanciaPlayer <= raioVisao) {
		alarm[0] = 0;
		alarm[1] = 30;
		emMovimento = false;
	    playerDetectado = true;
		executarIA = olharPlayerInimigoOW;
		instance_create_depth(x, y, -9999999, objAlerta);
	}
	
	return playerDetectado;
}