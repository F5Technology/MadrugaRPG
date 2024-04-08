if (menuAtual == MenuEnum.Principal) {
	opcaoAnterior = opcaoSelecionada;
	opcaoSelecionada = OpcaoMenuBatalhaEnum.Fugir;
}
else {
    opcaoSelecionada--;
}

alterarOpcaoBatalha();