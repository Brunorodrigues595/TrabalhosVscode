programa
{
	inclua biblioteca Util --> ut

	funcao inicio()
	{
		
	inteiro contagem_regres = 0

	enquanto (contagem_regres < 5 ou contagem_regres > 20)
	{
		limpa()
		escreva("Digite um valor entre 5 e 20: ")
		leia(contagem_regres)
		
		se (contagem_regres < 5 ou contagem_regres > 20)
		{
			escreva("\n Por favor escolha um número entre 5 e 20.")
			ut.aguarde(2000)
		}
	}
	
	enquanto (contagem_regres > 0)
	{
		limpa()
		escreva("Lançamento em: ", contagem_regres)
		
		contagem_regres = contagem_regres - 1
		ut.aguarde(1000) 
	}
	
		limpa()
		escreva("Foguete lançado com sucesso!")
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 65; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */