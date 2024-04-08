if (menuAtual == MenuEnum.Principal) {
	opcaoAnterior = opcaoSelecionada;
	opcaoSelecionada = OpcaoMenuBatalhaEnum.Atacar;
}
else {
    opcaoSelecionada++;
}

alterarOpcaoBatalha();