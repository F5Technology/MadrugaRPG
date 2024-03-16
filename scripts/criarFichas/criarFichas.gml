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
		maxPP: 195,
		pp: 195,
		dano: [26, 39],
		defesa: 4,
		iconesMenu: [
			sprIconeMadrugaPadrao,
			sprIconeMadrugaAnimado,
			sprIconeMadrugaMedo,
			sprIconeMadrugaDormindo
		],
		iconesBatalha: {
			dano: sprIconeMadrugaDano,
			padrao: sprIconeMadrugaParado
		}
	}
	
	#endregion
	
	#region Items
	
	item = 
	[
		// Item Vazio para manter o padrão do indice com o enum
		{},
		
		//Consumiveis
		{
			codigo: ItensEnum.RefrescoGroselha,
			nome: "Refresco de Groselha",
			icone: sprRefrescoGroselha,
			tipo: TipoItemEnum.Consumivel,
			HP: 10,
			PP: 0
		},
		{
			codigo: ItensEnum.RefrescoLimao,
			nome: "Refresco de Limao",
			icone: sprRefrescoLimao,
			tipo: TipoItemEnum.Consumivel,
			HP: 0,
			PP: 10
		},
		//Equipaveis
		{
			codigo: ItensEnum.AnelDeFogo,
			nome: "Anel de fogo",
			icone: sprAnelDeFogo,
			tipo: TipoItemEnum.Equipavel,
			equipado: false,
			efeito: function() {
				//Aplicar efeito do burn em batalha
			}
		}
	]
	
	#endregion
}