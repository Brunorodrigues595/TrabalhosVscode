programa
{
    funcao inicio()
    {
        real num1, num2, resultado = 0.0
        inteiro opcao
        logico opcao_valida = verdadeiro

        escreva("Digite o primeiro numero: ")
        leia(num1)

        escreva("Digite o segundo numero: ")
        leia(num2)

       
        escreva("\n--- MENU DE CALCULOS ---\n")
        escreva("1 - Soma\n")
        escreva("2 - Subtrair\n")
        escreva("3 - Multiplicar\n")
        escreva("4 - Dividir\n")
        escreva("5 - Calcular Media\n")
        escreva("Escolha uma opção: ")
        leia(opcao)

        escolha (opcao)
        {
            caso 1:
                resultado = num1 + num2
                pare
            caso 2:
                resultado = num1 - num2
                pare
            caso 3:
                resultado = num1 * num2
                pare
            caso 4:
                resultado = num1 / num2
                pare
            caso 5:
                resultado = (num1 + num2) / 2
                pare
            caso contrario:
                escreva("\nOpcao invalida!\n")
                opcao_valida = falso
        }

        
        se (opcao_valida) {
            escreva("\nO resultado da operacao escolhida e: ", resultado, "\n")
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 226; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */