programa
{
	inclua biblioteca Util --> ut
	
	funcao inicio()
	{
		// enquanto(while()) laço de repetição

		inteiro contador = 10

		/* cuidado que devemos ter o usar laços de repetição: evitar loops infinitos.
		 *
		 */

		 // dentro do parenteses coloco a condição do loop.
		enquanto(contador>0){
			escreva("\ncontagem regressiva", contador)
			contador = contador - 1
			ut.aguarde(3000) //1000 são milisegundos(1 segundo)
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 393; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */