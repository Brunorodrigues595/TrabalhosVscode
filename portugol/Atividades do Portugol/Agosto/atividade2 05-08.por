programa
{
    funcao inicio()
    {
        cadeia nome_cliente
        inteiro opcao_produto, quantidade
        cadeia tem_cupom
        real preco_unitario = 0.0, subtotal, total_final, desconto = 0.0
        real valor_entregue, troco

        escreva("=== SISTEMA DE PEDIDOS ===\n")
        escreva("Digite o nome do cliente: ")
        leia(nome_cliente)

        escreva("\n--- CARDÁPIO ---\n")
        escreva("1. Hambúrguer - R$ 18.00\n")
        escreva("2. Cachorro quente - R$ 12.00\n")
        escreva("3. Batata frita - R$ 10.00\n")
        escreva("4. Refrigerante - R$  6.00\n")
        escreva("5. Combo completo - R$ 35.00\n")
        escreva("Digite a opção do produto desejado: ")
        leia(opcao_produto)

        escolha (opcao_produto)
        {
            caso 1:
                preco_unitario = 18.00
                pare
            caso 2:
                preco_unitario = 12.00
                pare
            caso 3:
                preco_unitario = 10.00
                pare
            caso 4:
                preco_unitario = 6.00
                pare
            caso 5:
                preco_unitario = 35.00
                pare
            caso contrario:
                escreva("\n[ERRO] Você escolheu um produto que nao existe\n")
                
        }

        escreva("Digite a quantidade desejada: ")
        leia(quantidade)

        se (quantidade <= 0)
        {
            escreva("\n[ERRO] Quantidade inválida! Programa encerrado.\n")
            
        }

        subtotal = preco_unitario * quantidade

        escreva("O cliente tem cupom de desconto? (S para Sim / N para Não): ")
        leia(tem_cupom)

        se (tem_cupom == "S" ou tem_cupom == "s")
        {
            desconto = subtotal * 0.10 
            escreva("Cupom de 10% aplicado com sucesso!\n")
        }

        total_final = subtotal - desconto

        escreva("\nTotal a pagar: R$ ", total_final, "\n")
        escreva("Digite o valor entregue para o pagamento: R$ ")
        leia(valor_entregue)

        se (valor_entregue < total_final)
        {
            escreva("\n[ERRO] Valor entregue é insuficiente! Faltam R$ ", (total_final - valor_entregue), "\n")
        }
        senao
        {
            troco = valor_entregue - total_final

            escreva("\n========================================")
            escreva("\nRESUMO DO PEDIDO - CLIENTE: ", nome_cliente)
            escreva("\n========================================")
            escreva("\nSubtotal: R$ ", subtotal)
            escreva("\nDesconto aplicado: R$ ", desconto)
            escreva("\nTotal final: R$ ", total_final)
            escreva("\nValor pago: R$ ", valor_entregue)
            escreva("\nTroco: R$ ", troco)
            escreva("\n========================================\n")
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2394; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */