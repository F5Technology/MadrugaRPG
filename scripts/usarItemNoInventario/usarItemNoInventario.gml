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
			
			//Efeito brilho do icone
			instance_create_depth(objIconePlayerInventario.x - 7, objIconePlayerInventario.y, -9999999, objBrilhoUsandoItem);
			
			switch (objIconePlayerInventario.sprite_index) {
			    case sprIconeMadrugaAnimado:
			        objIconePlayerInventario.sprite_index = sprIconeMadrugaAnimadoBrilhando;
			        break;
			    case sprIconeMadrugaPadrao:
			        objIconePlayerInventario.sprite_index = sprIconeMadrugaPadraoBrilhando;
			        break;
			    case sprIconeMadrugaMedo:
			        objIconePlayerInventario.sprite_index = sprIconeMadrugaMedoBrilhando;
			        break;
			    case sprIconeMadrugaDormindo:
			        objIconePlayerInventario.sprite_index = sprIconeMadrugaDormindoBrilhando;
			        break;
			}
			
			objIconePlayerInventario.alarm[0] = 20;
			
		    // Voltar ao menu anterior
			opcaoSelecionada = 0;
			menuAtual = menuAnterior;
			menuAnterior = MenuEnum.Principal;
		}
	}
}