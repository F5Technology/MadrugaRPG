function usarItemEmBatalha() {
		var valorHP = itemSelecionado.HP;
		var valorPP = itemSelecionado.PP;
		
		if (ficha.hp + valorHP > ficha.maxHP) {
			valorHP = ficha.maxHP - ficha.hp;
			ficha.hp = ficha.maxHP;
		} else {
			ficha.hp += valorHP;
		}
		
		if (ficha.pp + valorPP > ficha.maxPP) {
			valorPP = ficha.maxPP - ficha.pp;
			ficha.pp = ficha.maxPP;
		} else {
			ficha.pp += valorPP;
		}
		
		codigoVerificado = itemSelecionado.codigo;
		var indice = array_find_index(objInventario.itens, function(item) { return item.codigo == codigoVerificado; });
		
		objInventario.itens[indice].quantidade--;
		
		if (objInventario.itens[indice].quantidade <= 0) {
		    array_delete(objInventario.itens, indice, 1);
		}
		
		//Exibição do valor recuperado
		if (itemSelecionado.HP > 0) {
		    instance_create_depth(x, y, -9999999, objValorBatalha, {valor: valorHP, cor: #8CD612});
		}
		
		if (itemSelecionado.PP > 0) {
		    instance_create_depth(x, y, -9999999, objValorBatalha, {valor: valorPP, cor: #5BA8FF});
		}
		
		//Efeito brilho do icone
		instance_create_depth(x - 24, y, -9999999, objBrilhoUsandoItem);
		
		//Sprites piscando
		sprite_index = sprMadrugaBattleUsandoItemBrilhando;
		image_index = 0;
		objIconePlayerBattle.sprite_index = sprIconeMadrugaPadraoBrilhando;
		objIconePlayerBattle.image_index = 0;
		
		//Limpar item selecionado
		itemSelecionado = 0;
}