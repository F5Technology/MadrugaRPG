function escolherAcaoInimigoOW() {
	executarIA = choose(moverInimigoOW, procurarPlayerInimigoOW);
	emMovimento = (executarIA == moverInimigoOW) ;
	
	if (emMovimento) { 
		definirPontoDirecaoInimigoOW();
	}
	
	alarm[0] = irandom_range(60, 120);
}