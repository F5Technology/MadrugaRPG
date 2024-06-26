function colidirEscada() {
	var emTransicao = global.emTransicao;
	
	if (!emTransicao) {
		alarm[0] = 160;
		pararMusica();
		global.fimJogo = true;
		global.emTransicao = true;
		
		objColisao.depth = depth;
		objPlayerOW.depth = depth;
		
		if (instance_exists(objInimigoOW)) {
			objInimigoOW.depth = depth;
		}
		
		var posicaoX = camera_get_view_x(view_camera[0]);
		var posicaoY = camera_get_view_y(view_camera[0]);
		
		layer_sequence_create("Effects", posicaoX, posicaoY, aniFadeInEndGame);
	}
}