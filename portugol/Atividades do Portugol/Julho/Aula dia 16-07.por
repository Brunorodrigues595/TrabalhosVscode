programa
{
  inclua biblioteca Matematica
 
  funcao inicio()
  {
    cadeia nome, destino
    inteiro idade, quantidade
    real valor_passagem, subtotal, taxa = 0.12, desconto = 0.0, valor_final, valor_pago, valor_diferenca
    real valor_taxa_calculada = 0.0
    logico internacional, documento_valido, autorizacao_responsavel, fidelidade, possui_cupom
   
    cadeia situacao_autorizacao = "", situacao_pagamento = "", situacao_final = ""


    escreva("\n=============================")
    escreva("\nSistema de reserva de viagem")
    escreva("\n=============================")
   
    escreva("\nNome do passageiro: ")
    leia(nome)
   
    escreva("Idade: ")
    leia(idade)
   
    escreva("Destino: ")
    leia(destino)
     
    escreva("\n=============================")
    escreva("\nClasse Econômica R$ 600 (Básico)")
    escreva("\nPremium Economy R$ 1500 (Intermediário)")
    escreva("\nClasse Executiva R$ 17000 (Alta gama)")
    escreva("\nPrimeira Classe R$ 70000 (Luxo extremo)")
    escreva("\n=============================")
     
    escreva("\nValor de cada passagem: ")
    leia(valor_passagem)
   
    escreva("Quantidade de passagens: ")
    leia(quantidade)


    escreva("A viagem é internacional? (verdadeiro/falso): ")
    leia(internacional)


    escreva("Possui documento válido? (verdadeiro/falso): ")
    leia(documento_valido)


    escreva("Possui autorização do responsável? (verdadeiro/falso): ")
    leia(autorizacao_responsavel)


    escreva("Participa do programa de fidelidade? (verdadeiro/falso): ")
    leia(fidelidade)


    escreva("Possui cupom? (verdadeiro/falso): ")
    leia(possui_cupom)


   
    subtotal = valor_passagem * quantidade
    escreva("\n> Informação: O valor sem as taxas do voo da sua reserva é R$ ", subtotal)
   


    escreva("\n\nDigite o valor que será pago: ")
    leia(valor_pago)


   
    se (internacional == verdadeiro) {
      valor_taxa_calculada = subtotal * taxa
    } senao {
      valor_taxa_calculada = 0.0
    }


   
    se (fidelidade == verdadeiro e quantidade >= 2) {
      desconto = subtotal * 0.15
    } senao se (possui_cupom == verdadeiro ou subtotal >= 1000.0) {
      desconto = subtotal * 0.10
    } senao {
      desconto = 0.0
    }


   
    valor_final = (subtotal + valor_taxa_calculada) - desconto


   
    se (internacional == verdadeiro e documento_valido == falso) {
      situacao_autorizacao = "Pendente (Documento inválido)"
      situacao_final = "Reserva Pendente"
    } senao se (idade >= 18 e documento_valido == verdadeiro) {
      situacao_autorizacao = "Autorizado"
    } senao se (idade < 18 e documento_valido == verdadeiro e autorizacao_responsavel == verdadeiro) {
      situacao_autorizacao = "Autorizado"
    } senao {
      situacao_autorizacao = "Não Autorizado"
      situacao_final = "Reserva Cancelada"
    }


 
    se (situacao_final != "Reserva Pendente" e situacao_final != "Reserva Cancelada") {
      se (valor_pago >= valor_final) {
        situacao_pagamento = "Suficiente"
        valor_diferenca = valor_pago - valor_final
        situacao_final = "Reserva Confirmada"
      } senao {
        situacao_pagamento = "Insuficiente"
        valor_diferenca = valor_final - valor_pago
        situacao_final = "Reserva Negada (Pagamento insuficiente)"
      }
    } senao {
      se (valor_pago >= valor_final) {
        situacao_pagamento = "Suficiente"
        valor_diferenca = valor_pago - valor_final
      } senao {
        situacao_pagamento = "Insuficiente"
        valor_diferenca = valor_final - valor_pago
      }
    }


   
    escreva("\n\n=============================")
    escreva("\n      SAÍDA DA RESERVA       ")
    escreva("\n=============================")
    escreva("\nNome: ", nome)
    escreva("\nIdade: ", idade)
    escreva("\nDestino: ", destino)
    escreva("\nQuantidade: ", quantidade)
    escreva("\nSubtotal: R$ ", subtotal)
    escreva("\nTaxa: R$ ", valor_taxa_calculada)
    escreva("\nDesconto: R$ ", desconto)
    escreva("\nValor final: R$ ", valor_final)
    escreva("\nAutorização: ", situacao_autorizacao)
    escreva("\nPagamento: ", situacao_pagamento)
   
    se (valor_pago >= valor_final) {
      escreva("\nTroco: R$ ", valor_diferenca)
    } senao {
      escreva("\nFalta pagar: R$ ", valor_diferenca)
    }
   
    escreva("\nSituação final: ", situacao_final)
    escreva("\n=============================\n")
  }
}



/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3573; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */