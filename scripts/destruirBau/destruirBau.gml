function destruirBau() {
	var finalizouAnimacao = checarFImAnimacao();
	
	if (finalizouAnimacao) {
	    instance_destroy();
	}
}