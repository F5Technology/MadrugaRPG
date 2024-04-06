function exibirValorBatalha() {
	var tamanho = 0.8;
	draw_set_font(fntValorBatalha);
	draw_set_alpha(image_alpha);
	
	inserirContornoTexto(x, y, valor, tamanho, c_black, 1);
	
	draw_set_color(cor);
	draw_text_transformed(x, y, valor, tamanho, tamanho, image_angle);
	draw_set_alpha(1.0);
}