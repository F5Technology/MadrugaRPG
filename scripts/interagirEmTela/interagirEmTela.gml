function interagirEmTela() {
	var teclaFullscreen = keyboard_check_pressed(vk_f12);
	
	if (!teclaFullscreen && permiteInteracao) {
		switch (room) {
	    case rmTelaInicial:
		        room_goto(rmPrincipal);
		        break;
		case rmGameOver:
				audio_group_stop_all(sngOST);			
		        room_goto(rmTelaInicial);
	        break;
		}
	}
}