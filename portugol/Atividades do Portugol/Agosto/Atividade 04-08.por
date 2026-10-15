programa
{
	funcao inicio()
	{
		
		cadeia nome
		inteiro idade
		logico temIngresso
		cadeia respostaIngresso

		
		escreva("Digite o seu nome: ")
		leia(nome)

		escreva("Digite a sua idade: ")
		leia(idade)

		escreva("Você possui ingresso? (sim / nao): ")
		leia(respostaIngresso)

		
		se (respostaIngresso == "sim" ou respostaIngresso == "Sim") 
		{
			temIngresso = verdadeiro
		}
		senao 
		{
			temIngresso = falso
		}

	
		se (idade >= 16 e temIngresso == verdadeiro) 
		{
			escreva("---- Entrada liberada com sucesso! ----")
			escreva("\nEntrada liberada! Divirta-se no filme, ", nome, "!")
		}
		senao se (idade >= 16 e temIngresso == falso) 
		{
			escreva("\nEntrada negada! ", nome, ", você tem a idade permitida, mas falta comprar o ingresso.")
		}
		senao 
		{
			escreva("\nEntrada negada! Desculpe, ", nome, ", você não cumpre os requisitos de idade ou ingresso.")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 536; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */