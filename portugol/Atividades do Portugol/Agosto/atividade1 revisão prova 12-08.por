programa
{
    funcao inicio()
    {
        cadeia nome_cliente
        inteiro opcao, quantidade, total_produtos = 0
        real valor_item = 0.0, valor_bruto = 0.0
        real percentual_desconto = 0.0, valor_desconto = 0.0, valor_final = 0.0
        cadeia nome_produto = ""

        escreva("Digite o nome do cliente: ")
        leia(nome_cliente)

        opcao = 0

        enquanto (opcao != 5)
        {
            escreva("\n--- MENU DA LANCHERIA ---\n")
            escreva("1. Hambúrguer – R$ 20,00\n")
            escreva("2. Cachorro-quente – R$ 15,00\n")
            escreva("3. Batata frita – R$ 12,00\n")
            escreva("4. Refrigerante – R$ 7,00\n")
            escreva("5. Finalizar pedido\n")
            escreva("Escolha uma opção: ")
            leia(opcao)

            escolha (opcao)
            {
                caso 1:
                    nome_produto = "Hambúrguer"
                    valor_item = 20.0
                    pare
                caso 2:
                    nome_produto = "Cachorro-quente"
                    valor_item = 15.0
                    pare
                caso 3:
                    nome_produto = "Batata frita"
                    valor_item = 12.0
                    pare
                caso 4:
                    nome_produto = "Refrigerante"
                    valor_item = 7.0
                    pare
                caso 5:
                    pare
                caso contrario:
                    escreva("Opção inválida! Tente novamente.\n")
                    
            }

            se (opcao >= 1 e opcao <= 4)
            {
                faca
                {
                    escreva("Digite a quantidade desejada de ", nome_produto, ": ")
                    leia(quantidade)
                    
                    se (quantidade <= 0)
                    {
                        escreva("A quantidade deve ser maior que zero!\n")
                    }
                } enquanto (quantidade <= 0)

                para (inteiro i = 1; i <= quantidade; i++)
                {
                    escreva(nome_produto, " ", i, " adicionado\n")
                }

                valor_bruto = valor_bruto + (valor_item * quantidade)
                total_produtos = total_produtos + quantidade
            }
        }

        se (valor_bruto > 100.0)
        {
            percentual_desconto = 15.0
        }
        senao se (valor_bruto >= 60.0)
        {
            percentual_desconto = 10.0
        }
        senao se (valor_bruto >= 30.0)
        {
            percentual_desconto = 5.0
        }
        senao
        {
            percentual_desconto = 0.0
        }

        valor_desconto = valor_bruto * (percentual_desconto / 100.0)
        valor_final = valor_bruto - valor_desconto

        escreva("\n=== RESUMO DO PEDIDO ===\n")
        escreva("Nome do cliente: ", nome_cliente, "\n")
        escreva("Quantidade total de produtos: ", total_produtos, "\n")
        escreva("Valor original da compra: R$ ", valor_bruto, "\n")
        escreva("Percentual de desconto: ", percentual_desconto, "%\n")
        escreva("Valor do desconto: R$ ", valor_desconto, "\n")
        escreva("Valor final do pedido: R$ ", valor_final, "\n")
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1546; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */