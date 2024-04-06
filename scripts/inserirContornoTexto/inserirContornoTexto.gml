function inserirContornoTexto(horizontal, vertical, texto, tamanho, cor, espessura) {	
	draw_set_color(cor);  
	draw_text_transformed(horizontal+espessura, vertical+espessura, texto, tamanho, tamanho, image_angle);  
	draw_text_transformed(horizontal-espessura, vertical-espessura, texto, tamanho, tamanho, image_angle);  
	draw_text_transformed(horizontal, vertical+espessura, texto, tamanho, tamanho, image_angle);  
	draw_text_transformed(horizontal+espessura, vertical,texto, tamanho, tamanho, image_angle);  
	draw_text_transformed(horizontal, vertical-espessura, texto, tamanho, tamanho, image_angle);  
	draw_text_transformed(horizontal-espessura, vertical, texto, tamanho, tamanho, image_angle);  
	draw_text_transformed(horizontal-espessura, vertical+espessura, texto, tamanho, tamanho, image_angle);  
	draw_text_transformed(horizontal+espessura, vertical-espessura, texto, tamanho, tamanho, image_angle);  
}