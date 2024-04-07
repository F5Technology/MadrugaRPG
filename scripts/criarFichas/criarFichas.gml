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
		level: 1,
		maxXP: dadoMadruga[1].maxXP,
		xp: 0,
		maxHP: dadoMadruga[1].maxHP,
		hp: dadoMadruga[1].maxHP,
		maxPP: dadoMadruga[1].maxPP,
		pp:  dadoMadruga[1].maxPP,
		defesa: dadoMadruga[1].defesa,
		anel: ItensEnum.Nenhum,
		iconesMenu: [
			sprIconeMadrugaPadrao,
			sprIconeMadrugaAnimado,
			sprIconeMadrugaMedo,
			sprIconeMadrugaDormindo
		],
		iconesBatalha: {
			dano: sprIconeMadrugaDano,
			padrao: sprIconeMadrugaParado,
			fugindo: sprIconeMadrugaMedo
		},
		ataques: [
			{
					tipo: AtaquesEnum.Normal,
					nome: "Ataque normal",
					mensagem: "Seu Madruga atacou {0}",
					descricao: "Efetua um golpe normal no inimigo",
					custoPP: dadoMadruga[1].custoPP.normal,
					dano: dadoMadruga[1].dano.normal
			},
			{
					tipo: AtaquesEnum.BastaoFogo,
					nome: "Bastao de fogo",
					mensagem: "Seu Madruga atingiu {0} com o bastao de fogo",
					descricao: "Cria uma bola de fogo que atinge o inimigo",
					custoPP: dadoMadruga[1].custoPP.bastaoFogo,
					dano: dadoMadruga[1].dano.bastaoFogo
			}
		]
	}
	
	#endregion
	
	#region Inimigos
	
	aranha = 
	{
		nome: "Aranha",
		xp: 9,
		maxHP: 175,
		hp: 175,
		dano: [6, 9]
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