function posicionarParaAcao() {
	switch (acaoAtual) {
	    case AcaoBatalhaEnum.Nenhum:
	        // TODO
	        break;
	    case AcaoBatalhaEnum.Atacar:
	        // TODO
	        break;
	    case AcaoBatalhaEnum.Defender:
	        // TODO
	        break;
	    case AcaoBatalhaEnum.UsarItem:
	        // TODO
	        break;
	    case AcaoBatalhaEnum.Fugir:
	        if (point_direction(x, y, origemX - 20, origemY) <= 2) {
			    speed = 0;
			}
	        break;
	}
}