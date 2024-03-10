function abrindoBau() {
	var finalizouAnimacao = checarFImAnimacao();
	
	if (finalizouAnimacao) {
	    global.pause = false;
		sprite_index = sprBauAberto;
		executarEstado = function () { }; //Script pra não fazer nada mesmo rs
		
		var uiItemObtido = instance_create_layer(x, y,  "Instances", objItemObtido, {item: item});
		
		if (objInventario != 0) {
			if (item.tipo == TipoItemEnum.Consumivel) {
				array_push(objInventario.consumiveis, item);
			}
			else if (item.tipo == TipoItemEnum.Equipavel) {
				array_push(objInventario.equipaveis, item);
			}
		}
		
		uiItemObtido.alarm[0] = 90;		
		alarm[0] = 60;
	}
	else if (round(image_index) == 8 && !bauAberto) {
		bauAberto = true;
	    reproduzirSFX(sndAbrindoBau);
	}
}