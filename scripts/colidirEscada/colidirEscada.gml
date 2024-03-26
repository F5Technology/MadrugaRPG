function colidirEscada() {
	var emTransicao = global.emTransicao;
	
	if (!emTransicao) {
		alarm[0] = 160;
		global.fimJogo = true;
		global.emTransicao = true;
		
		objColisao.depth = depth;
		objPlayerOW.depth = depth;
		objInimigoOW.depth = depth;
		
		var posicaoX = camera_get_view_x(view_camera[0]);
		var posicaoY = camera_get_view_y(view_camera[0]);
		
		layer_sequence_create("Effects", posicaoX, posicaoY, aniFadeIn);
	}
}