function definirSpritePorTipo(){
	if (object_index == objArvoreTipo1) {
	    sprite_index = tipo == 1 ? sprArvoreTipo1 : sprArvoreTipo2;
	}
	else if (object_index == objPedraTipo2) {
	    sprite_index = tipo == 1 ? sprPedraTipo1 : sprPedraTipo2;
	}
}