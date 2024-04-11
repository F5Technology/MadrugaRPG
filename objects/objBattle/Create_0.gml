tamanhoBarraHPVermelho = (objPlayerOW.ficha.hp/objPlayerOW.ficha.maxHP) * sprite_get_width(sprPreenchimentoHP);
ataqueSelecionado = {
		tipo: AtaquesEnum.Queimadura,
		nome: "Queimadura",
		mensagem: "{0} se queimou",
		descricao: "Da 10 de dano no inimigo a cada turno",
		custoPP: 0,
		dano: [10]
}