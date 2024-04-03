function executarAcao(){
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
	        if (image_alpha > 0) {
			    image_alpha -= 0.2;
			}
	        break;
	}
}