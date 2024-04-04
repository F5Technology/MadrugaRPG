function fugirBatalha() {
	objBattle.textoInfo = "Arregou!";
	
	with (objOpcoesBattle.player) {		
		image_index = 0;
		spriteAtual = sprMadrugaBattleFugindo;
		acaoAtual = AcaoBatalhaEnum.Fugir;
		acao = posicionarParaAcao;
		move_towards_point(x - 20, y, 2);
		alarm[0] = 30;
	}
	
	objIconePlayerBattle.sprite_index = sprIconeMadrugaMedo;
	
	instance_destroy(objOpcoesBattle);
}