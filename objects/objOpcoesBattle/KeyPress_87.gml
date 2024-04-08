if (menuAtual == MenuEnum.Principal) {
	opcaoAnterior = opcaoSelecionada;
	opcaoSelecionada = OpcaoMenuBatalhaEnum.Defender;
}
else {
    opcaoSelecionada++;
}

alterarOpcaoBatalha();