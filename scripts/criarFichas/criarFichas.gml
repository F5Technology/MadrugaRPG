function criarFichas() {
	#region Personagens jogaveis
	
	seuMadruga = 
	{
		nome: "Seu Madruga",
		level: 1,
		maxXP: 150,
		xp: 0,
		maxHP: 675,
		hp: 675,
		maxPP: 200,
		pp: 200,
		defesa: 4,
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
					custoPP: 0,
					dano: [26, 39]
			},
			{
					tipo: AtaquesEnum.BastaoFogo,
					nome: "Bastao de fogo",
					mensagem: "Seu Madruga atingiu {0} com o bastao de fogo",
					descricao: "Cria uma bola de fogo que atinge o inimigo",
					custoPP: 50,
					dano: [100]
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