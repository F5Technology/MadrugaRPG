function aplicarFullscreen() {
	var fullscreen = window_get_fullscreen();
	
	if (fullscreen) {
	    window_set_fullscreen(false);
	} else {
	    window_set_fullscreen(true);
	}
}