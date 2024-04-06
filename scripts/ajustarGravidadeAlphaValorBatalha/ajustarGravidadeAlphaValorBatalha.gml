function ajustarGravidadeAlphaValorBatalha(){
	image_alpha = gravity > 0 ? 1.0 : image_alpha - 0.02;
	
	if(y > ystart) {
		vspeed = 0;
		gravity = 0;
	}
	
	if(image_alpha <= 0) {
		instance_destroy();
	}
}