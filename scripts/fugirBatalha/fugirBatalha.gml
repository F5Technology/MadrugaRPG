function fugirBatalha() {
	objBattle.textoInfo = "Arregou!";
	
	with (objOpcoesBattle.player) {
		spriteAtual = sprMadrugaBattleFugindo;
		acaoAtual = AcaoBatalhaEnum.Fugir;
		acao = posicionarParaAcao;
		move_towards_point(x - 20, y, 2);
		alarm[0] = 30;
	}
	
	instance_destroy(objOpcoesBattle);
}