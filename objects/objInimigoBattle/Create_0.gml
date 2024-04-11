origemX = x;
origemY = y;
ficha = variable_clone(Ficha.aranha);
status = ficha.status;
spriteAtual = sprite_index;
tamanhoBarraHPVermelho = (ficha.hp/ficha.maxHP) * sprite_get_width(sprPreenchimentoHP);
acao = function () {
	//Funcao vazia
}