function interagirEmTela() {
	var teclaFullscreen = keyboard_check_pressed(vk_f12);
	
	if (!teclaFullscreen && permiteInteracao) {
		switch (room) {
	    case rmTelaInicial:
		        room_goto(rmTeste);
		        break;
		}
	}
}