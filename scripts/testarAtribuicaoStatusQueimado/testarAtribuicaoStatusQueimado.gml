function testarAtribuicaoStatusQueimado() {
	if (
		inimigoSelecionado.status == StatusBatalhaEnum.Normal && 
		(ataqueSelecionado.tipo == AtaquesEnum.BastaoFogo || ficha.anel == ItensEnum.AnelDeFogo)
	) {
	    var porcentagemRequerida = 100;
		
		if (ataqueSelecionado.tipo == AtaquesEnum.BastaoFogo) {
		    porcentagemRequerida = 30;
		}
		else if (ficha.anel == ItensEnum.AnelDeFogo) {
		    porcentagemRequerida = 15;
		}
		
		if (porcentagemRequerida > 0) {
		    var resultadoTeste = random_range(0, 100);
			
			if (resultadoTeste <= porcentagemRequerida) {
			    inimigoSelecionado.status = StatusBatalhaEnum.Queimado;
			}
		}
	}
}