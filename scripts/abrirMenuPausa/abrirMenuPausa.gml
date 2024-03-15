function abrirMenuPausa() {
	var obtendoItem = global.obtendoItem;
	
	if (!obtendoItem) {
	    var pause = global.pause;
		
		if (pause) {
			instance_destroy(objMenuPausa);
			
		    global.pause = false;
			//instance_activate_all();
		}
		else {
			var posicaoX = camera_get_view_x(view_camera[0]) + 88;
			var posicaoY = camera_get_view_y(view_camera[0]) + 10;
			
		    global.pause = true;
			//instance_deactivate_all(true);
			
			instance_create_depth(posicaoX, posicaoY,  -99999, objMenuPausa);
		}
	}
}