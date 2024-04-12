origemX = x;
origemY = y;
ficha = objPlayerOW.ficha;
levelBarraXP = ficha.level;
maxBarraXP = ficha.maxXP;
tamanhoBarraXP = ficha.xp > 0 ? 
sprite_get_width(sprPreenchimentoXP) - ((ficha.xp/ficha.maxXP) * sprite_get_width(sprPreenchimentoXP)) : 
sprite_get_width(sprPreenchimentoXP);
acao = function () {
	//Funcao vazia
}