programa { 
    funcao inicio() { 
        cadeia nome, desconto
        inteiro opcao = 0, qtd_comum = 0, qtd_vip = 0, qtd_premium = 0, qtd_total = 0, contador, qtd_parcial
        real valor_compra = 0.0, valor_original = 0.0 
        
        escreva("Digite seu nome: ") 
        leia(nome) 
        
        enquanto(opcao !=4) { 
            limpa() 
            escreva("\n1. Ingresso comum - R$ 25,00")
            escreva("\n2. Ingresso VIP - R$ 50,00")
            escreva("\n3. Ingresso Premium - R$ 80,00")
            escreva("\n4. Finalizar compra\n") 
            leia(opcao) 
            
            escolha(opcao) { 
                caso 1: 
                    faca { 
                        escreva("Informe a quantidade de ingressos comuns: ") 
                        leia(qtd_parcial) 
                    } enquanto(qtd_parcial <= 0) 
                    qtd_comum = qtd_comum + qtd_parcial
                    valor_compra = valor_compra + (qtd_parcial * 25.00) 
                    qtd_total = qtd_total + qtd_parcial 
                    pare 
                    
                caso 2: 
                    faca { 
                        escreva("Informe a quantidade de ingressos VIP: ") 
                        leia(qtd_parcial) 
                    } enquanto(qtd_parcial <= 0) 
                    qtd_vip = qtd_vip + qtd_parcial
                    valor_compra = valor_compra + (qtd_parcial * 50.00) 
                    qtd_total = qtd_total + qtd_parcial 
                    pare 
                    
                caso 3: 
                    faca { 
                        escreva("Informe a quantidade de ingressos Premium: ") 
                        leia(qtd_parcial) 
                    } enquanto(qtd_parcial <= 0) 
                    qtd_premium = qtd_premium + qtd_parcial
                    valor_compra = valor_compra + (qtd_parcial * 80.00) 
                    qtd_total = qtd_total + qtd_parcial 
                    pare 
                    
                caso 4:
                    pare
                    
                caso contrario: 
                    pare 
            } 
        } 
        
        valor_original = valor_compra 
        
        
        se (valor_compra > 200.00) { 
            valor_compra = valor_compra - (valor_compra * 0.15) 
            desconto = "Desconto de 15%" 
        } senao se (valor_compra > 100.00) { 
            valor_compra = valor_compra - (valor_compra * 0.10) 
            desconto = "Desconto de 10%" 
        } senao se (valor_compra > 50.00) { 
            valor_compra = valor_compra - (valor_compra * 0.05) 
            desconto = "Desconto de 5%" 
        } senao { 
            desconto = "Sem descontos" 
        } 
        
        
        escreva("\n===== Nota Fiscal =====") 
        escreva("\nNome Cliente: ", nome) 
        escreva("\n--- Quantidade por tipo ---")
        escreva("\nIngressos Comuns: ", qtd_comum)
        escreva("\nIngressos VIP: ", qtd_vip)
        escreva("\nIngressos Premium: ", qtd_premium)
        escreva("\n---------------------------")
        escreva("\nQuantidade total de ingressos: ", qtd_total) 
        escreva("\nValor Original da compra: R$ ", valor_original) 
        escreva("\nStatus do desconto: ", desconto) 
        escreva("\nValor Final: R$ ", valor_compra) 
        escreva("\n=====================\n") 
    } 
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 135; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */