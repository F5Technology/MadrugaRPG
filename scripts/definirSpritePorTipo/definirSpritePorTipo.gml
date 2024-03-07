function definirSpritePorTipo(){
	if (object_index == objArvore) {
	    sprite_index = tipo == 1 ? sprArvoreTipo1 : sprArvoreTipo2;
	}
	else if (object_index == objPedra) {
	    sprite_index = tipo == 1 ? sprPedraTipo1 : sprPedraTipo2;
	}
}