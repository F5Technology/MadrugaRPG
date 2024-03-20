function usarItemNoInventario(){
	with (objMenuPausa) {
	    codigoVerificado = objInventario.itens[itemSelecionado].codigo;
		var indice = array_find_index(Ficha.item, function(ficha) { return ficha.codigo == codigoVerificado; });
		
		if (indice) {
			var fichaItem = Ficha.item[indice];
			var valorHP = fichaItem.HP;
			var valorPP = fichaItem.PP;
			
			if (fichaMadruga.hp + valorHP > fichaMadruga.maxHP) {
				fichaMadruga.hp = fichaMadruga.maxHP;
			} else {
				fichaMadruga.hp += valorHP;
			}
			
			if (fichaMadruga.pp + valorPP > fichaMadruga.maxPP) {
				fichaMadruga.pp = fichaMadruga.maxPP;
			} else {
				fichaMadruga.pp += valorPP;
			}
			
			objInventario.itens[itemSelecionado].quantidade--;
			
			if (objInventario.itens[itemSelecionado].quantidade <= 0) {
			    array_delete(objInventario.itens, itemSelecionado, 1);
			}
			
			instance_create_depth(objIconePlayerOW.x - 7, objIconePlayerOW.y, -9999999, objBrilhoUsandoItem);
			
		    // Voltar ao menu anterior
			opcaoSelecionada = 0;
			menuAtual = menuAnterior;
			menuAnterior = MenuEnum.Principal;
		}
	}
}