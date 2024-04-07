function posicionarParaAcao() {
	switch (acaoAtual) {
	    case AcaoBatalhaEnum.Atacar:
			if (point_distance(x, y, inimigoSelecionado.x - (inimigoSelecionado.sprite_width / 2) - 3, inimigoSelecionado.y - 10) <= 6) {
			    speed = 0;
				spriteAtual = sprMadrugaBattleIdle;
			}
	        break;
	    case AcaoBatalhaEnum.UsarItem:
	       if (checarFImAnimacao()) {
		       image_speed = 0;

			   instance_create_depth(x, y - 26, depth-10, objItemUsadoBattle, {sprite_index: itemSelecionado.icone});
		   }
	        break;
	    case AcaoBatalhaEnum.Fugir:
	        if (point_distance(x, y, origemX - 20, origemY) <= 2) {
			    speed = 0;
			}
	        break;
	}
}