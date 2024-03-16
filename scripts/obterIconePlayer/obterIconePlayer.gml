function obterIconePlayer(){
	sprite_index = objMenuPausa.fichaMadruga.iconesMenu[0];
	array_delete(objMenuPausa.fichaMadruga.iconesMenu, 0, 1);
	
	//Reseta lista de icones do player no inventario
	if (array_length(objMenuPausa.fichaMadruga.iconesMenu) <= 0) {
	    objMenuPausa.fichaMadruga.iconesMenu = variable_clone(Ficha.seuMadruga.iconesMenu);
	}
}