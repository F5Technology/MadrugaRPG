function exibirTextoLevelUP() {
	var tamanho = 0.8;
	var texto = "Level UP!";
	draw_set_font(fntValorBatalha);
	
	inserirContornoTexto(x, y, texto, tamanho, c_black, 1);
	
	draw_set_color(c_yellow);
	draw_text_transformed(x, y, texto, tamanho, tamanho, image_angle);
}