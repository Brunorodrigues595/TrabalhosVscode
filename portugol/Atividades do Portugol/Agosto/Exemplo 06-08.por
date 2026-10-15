programa
{
	
	funcao inicio()
	{
		logico finalizou_pedido = falso
		cadeia pedido="não"

		enquanto (finalizou_pedido != verdadeiro){
			escreva("\n finalizou pedido?")
			leia(pedido)
			se(pedido=="sim"){
				limpa()
				finalizou_pedido=verdadeiro
				escreva("\nPedido Finalizdo")
			}senao{finalizou_pedido=falso
			limpar()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 339; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */