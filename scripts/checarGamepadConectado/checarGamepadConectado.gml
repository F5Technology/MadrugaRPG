function checarGamepadConectado(){
	global.slot = 0;
	var dispositivosConectados = gamepad_get_device_count();
	
	for (var slot = 0; slot < dispositivosConectados; slot++;)
	{
	    if (gamepad_is_connected(slot)) {
			global.slot = slot;
		}
	}
	
	if (instance_exists(objPlayerOW) && global.slot <= 0) {
		objPlayerOW.velocidadeAnalogico = 0;
	}
	
	var logRetorno = global.slot > 0 ? "Modo Gamepad Ligado": "Modo Gamepad Desligado";
	
	show_debug_message(logRetorno);
}