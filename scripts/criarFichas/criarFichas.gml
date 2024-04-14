function criarFichas() {
	#region Dados level
	
	dadoMadruga = [
		{},
		{
			maxXP: 150,
			maxHP: 675,
			maxPP: 200,
			defesa: 4,
			dano: {
				normal: [26, 39],
				bastaoFogo: [100]
			},
			custoPP: {
				normal: 0,
				bastaoFogo: 50
			}
		},
		{
			maxXP: 300,
			maxHP: 750,
			maxPP: 225,
			defesa: 5,
			dano: {
				normal: [29, 44],
				bastaoFogo: [200]
			},
			custoPP: {
				normal: 0,
				bastaoFogo: 60
			}
		}
	] 
	
	#endregion
	
	#region Personagens jogaveis
	
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
	
	#endregion
	
	#region Inimigos
	
	aranha = 
	{
		nome: "Aranha",
		xp: 35,
		maxHP: 175,
		status: StatusBatalhaEnum.Normal,
		hp: 175,
				ataques: [
			{
					tipo: AtaquesEnum.Normal,
					mensagem: "Aranha atacou {0}",
					dano: [6, 9]
			}
		]
	}
	
	#endregion
	
	#region Itens
	
	item = 
	[
		// Item Vazio para manter o padrão do indice com o enum
		{ codigo: 0 },
		
		//Consumiveis
		{
			codigo: ItensEnum.RefrescoTamarindo,
			nome: "Refresco de Tamarindo",
			icone: sprRefrescoTamarindo,
			descricao: "Recupera 100 PP",
			tipo: TipoItemEnum.Consumivel,
			HP: 0,
			PP: 100
		},
		{
			codigo: ItensEnum.RefrescoLimao,
			nome: "Refresco de Limao",
			icone: sprRefrescoLimao,
			descricao: "Recupera 300 HP",
			tipo: TipoItemEnum.Consumivel,
			HP: 300,
			PP: 0
		},
		
		//Equipaveis
		{
			codigo: ItensEnum.AnelDeFogo,
			nome: "Anel de fogo",
			icone: sprAnelDeFogo,
			descricao: "Da 15% de chance de aplicar um status de queimado \nno inimigo ao realizar um ataque normal",
			tipo: TipoItemEnum.Equipavel,
			equipado: false,
			efeito: function() {
				//Aplicar efeito do burn em batalha
			}
		}
	]
	
	#endregion
}