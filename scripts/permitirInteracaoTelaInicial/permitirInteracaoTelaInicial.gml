function permitirInteracaoTelaInicial() {
	permiteInteracao = true;
	var camada = layer_get_id("Cutscenes");
	var animacoes = layer_get_all_elements(camada);

	for (var i = 0; i < array_length(animacoes); i++;)
	{
		layer_sprite_destroy(animacoes[i]);
	}
	
	layer_sequence_create("Cutscenes", 0, 0, ctsTelaInicial);
}