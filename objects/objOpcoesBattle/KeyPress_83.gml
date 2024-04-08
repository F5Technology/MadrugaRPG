if (menuAtual == MenuEnum.Principal) {
	opcaoAnterior = opcaoSelecionada;
	opcaoSelecionada = OpcaoMenuBatalhaEnum.Itens;
}
else {
    opcaoSelecionada--;
}

alterarOpcaoBatalha();