programa
{
    funcao inicio()
    {
       
        cadeia nome_cliente
        cadeia nome_produto1, nome_produto2
        real preco_produto1, preco_produto2
        inteiro qtd_produto1, qtd_produto2
        cadeia entrega_sn, cupom_sn
        real distancia
        real valor_pago

        real total_produto1, total_produto2, subtotal
        real taxa_entrega 
        real valor_desconto 
        real total_final
        real diferenca

       
        escreva("Nome do cliente: ")
        leia(nome_cliente)

        escreva("Nome do primeiro produto: ")
        leia(nome_produto1)
        escreva("Preço do primeiro produto: ")
        leia(preco_produto1)
        escreva("Quantidade do primeiro produto: ")
        leia(qtd_produto1)

        escreva("Nome do segundo produto: ")
        leia(nome_produto2)
        escreva("Preço do segundo produto: ")
        leia(preco_produto2)
        escreva("Quantidade do segundo produto: ")
        leia(qtd_produto2)

        escreva("O pedido será entregue? (s/n): ")
        leia(entrega_sn)

        se (entrega_sn == "s" ou entrega_sn == "S") {
            escreva("distância da entrega em quilômetros: ")
            leia(distancia)
       } senao {
        distancia = 0.0
    }

        escreva("O cliente possui cupom? (s/n): ")
        leia(cupom_sn)

        escreva("Valor pago pelo cliente: ")
        leia(valor_pago)

        
        total_produto1 = preco_produto1 * qtd_produto1
        total_produto2 = preco_produto2 * qtd_produto2
        subtotal = total_produto1 + total_produto2

        
        se (entrega_sn == "s" ou entrega_sn == "S") {
            se (distancia <= 5.0) {
                taxa_entrega = 5.0
            } senao {
                taxa_entrega = 10.0
            }
        } senao {
            taxa_entrega = 0.0
        }

     
        se (cupom_sn == "s" ou cupom_sn == "S" ou subtotal >= 100.0) {
            valor_desconto = subtotal * 0.10
        } senao {
            valor_desconto = 0.0
        }

       
        total_final = (subtotal - valor_desconto) + taxa_entrega

       
        escreva("\n--- RESUMO DO PEDIDO ---\n")
        escreva("Cliente: ", nome_cliente, "\n")
        escreva("1 Produto: ", nome_produto1, "  Qtd: ", qtd_produto1, "  Total: R$ ", total_produto1, "\n")
        escreva("2 Produto: ", nome_produto2, "  Qtd: ", qtd_produto2, "  Total: R$ ", total_produto2, "\n")
        escreva("Subtotal: R$ ", subtotal, "\n")
        escreva("Desconto: R$ ", valor_desconto, "\n")
        escreva("Taxa de entrega: R$ ", taxa_entrega, "\n")
        escreva("Total final: R$ ", total_final, "\n")
        escreva("Valor pago: R$ ", valor_pago, "\n")

       
        se (valor_pago >= total_final) {
            diferenca = valor_pago - total_final
            escreva("Troco: R$ ", diferenca, "\n")
            escreva("Situação do pagamento: Pagamento suficiente\n")
        } senao {
            diferenca = total_final - valor_pago
            escreva("Valor faltante: R$ ", diferenca, "\n")
            escreva("Situação do pagamento: Pagamento insuficiente\n")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2318; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */