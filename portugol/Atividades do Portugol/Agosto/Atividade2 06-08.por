programa
{
    funcao inicio()
    {
        
        cadeia nome
        real meta, valorDepositado, totalEconomizado = 0.0, diferenca = 0.0
        inteiro qtdDepositos = 0

        
        escreva("Digite o nome do usuário: ")
        leia(nome)

        escreva("Digite o valor da meta de economia: R$ ")
        leia(meta)

        limpa()

        
        enquanto (totalEconomizado < meta)
        {
            escreva("--- Novo Depósito ---\n")
            escreva("Meta: R$ ", meta, " | Total economizado até agora: R$ ", totalEconomizado, "\n")
            escreva("Digite o valor que será depositado: R$ ")
            leia(valorDepositado)

            
            se (valorDepositado > 0)
            {
               
                totalEconomizado = totalEconomizado + valorDepositado

                
                qtdDepositos = qtdDepositos + 1

                
                escreva("\nDepósito realizado com sucesso!\n")
                escreva("Total acumulado: R$ ", totalEconomizado, "\n")

                
                se (totalEconomizado < meta)
                {
                    diferenca = meta - totalEconomizado
                    escreva("Ainda falta R$ ", diferenca, " para alcançar a meta.\n\n")
                }
                senao
                {
                    escreva("\n")
                }
            }
            senao
            {
                escreva("\n[Erro] O valor do depósito deve ser maior que zero. Tente novamente.\n\n")
            }
        }

        
        limpa()
        escreva("========================================\n")
        escreva("          RESUMO FINAL DA META          \n")
        escreva("========================================\n")
        escreva("Nome do usuário: ", nome, "\n")
        escreva("Valor da meta: R$ ", meta, "\n")
        escreva("Total economizado: R$ ", totalEconomizado, "\n")
        escreva("Quantidade de depósitos realizados: ", qtdDepositos, "\n")

        
        se (totalEconomizado > meta)
        {
            diferenca = totalEconomizado - meta
            escreva("Valor que ultrapassou a meta: R$ ", diferenca, "\n")
        }
        senao
        {
            escreva("Valor que ultrapassou a meta: R$ 0.00\n")
        }

        escreva("========================================\n")
        escreva("Parabéns, você conseguiu a meta!\n")
        escreva("========================================\n")
    }
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1994; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */