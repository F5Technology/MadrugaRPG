function posicionarParaAcao() {
	switch (acaoAtual) {
	    case AcaoBatalhaEnum.Nenhum:
	        // TODO
	        break;
	    case AcaoBatalhaEnum.Atacar:
	        // TODO
	        break;
	    case AcaoBatalhaEnum.UsarItem:
	       if (checarFImAnimacao()) {
		       image_speed = 0;

			   instance_create_depth(x, y - 26, depth-10, objItemUsadoBattle, {sprite_index: itemSelecionado.icone});
		   }
	        break;
	    case AcaoBatalhaEnum.Fugir:
	        if (point_direction(x, y, origemX - 20, origemY) <= 2) {
			    speed = 0;
			}
	        break;
	}
}