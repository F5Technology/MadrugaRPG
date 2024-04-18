function atualizarFichasPlayer() {
	seuMadruga = 
	{
		nome: "Seu Madruga",
		level: levelAtual,
		maxXP: dadoMadruga[levelAtual].maxXP,
		xp: 0,
		maxHP: dadoMadruga[levelAtual].maxHP,
		hp: dadoMadruga[levelAtual].maxHP,
		maxPP: dadoMadruga[levelAtual].maxPP,
		pp:  dadoMadruga[levelAtual].maxPP,
		defesa: dadoMadruga[levelAtual].defesa,
		anel: ItensEnum.Nenhum,
		iconesMenu: [
			sprIconeMadrugaPadrao,
			sprIconeMadrugaAnimado,
			sprIconeMadrugaMedo,
			sprIconeMadrugaDormindo
		],
		iconesBatalha: {
			dano: sprIconeMadrugaDanoAnimado,
			padrao: sprIconeMadrugaPadrao,
			brilhando: sprIconeMadrugaPadraoBrilhando,
			fugindo: sprIconeMadrugaMedo,
			morto: sprIconeMadrugaMorto,
			vitoria: sprIconeMadrugaAnimado
		},
		ataques: [
			{
					tipo: AtaquesEnum.Normal,
					nome: "Ataque normal",
					mensagem: "Seu Madruga atacou {0}",
					descricao: "Efetua um golpe normal no inimigo",
					custoPP: dadoMadruga[levelAtual].custoPP.normal,
					dano: dadoMadruga[levelAtual].dano.normal
			},
			{
					tipo: AtaquesEnum.BastaoFogo,
					nome: "Bastao de fogo",
					mensagem: "Seu Madruga atingiu {0} com o bastao de fogo",
					descricao: "Cria uma bola de fogo que atinge o inimigo",
					custoPP: dadoMadruga[levelAtual].custoPP.bastaoFogo,
					dano: dadoMadruga[levelAtual].dano.bastaoFogo
			}
		]
	}
}