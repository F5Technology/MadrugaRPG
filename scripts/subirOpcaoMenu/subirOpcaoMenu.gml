function subirOpcaoMenu(){	
	var limiteMinimo = 0;
	var tamanhoInventario = 0;
	
	if (opcaoSelecionada > limiteMinimo) {
	    opcaoSelecionada--;
		reproduzirSFXUI(sndHover);
	}
}