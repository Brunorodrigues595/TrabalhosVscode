programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		cadeia nome, placa_do_veiculo, veiculo
		real quant_horas, valor_total
		logico cadrastro, cupom , ficou_noturno

		escreva("==========================")
		escreva("\nPAGUE SEU ESTACIONAMENTO")
		escreva("\n==========================")
		
		escreva("\n\nNome do motorista: ")
		leia(nome)
		
		escreva("Placa  do veiculo: ")
		leia(placa_do_veiculo)
		
		escreva("Tipo do veiculo: - carro/moto/utilitario ")
		leia(veiculo)
		
		escreva("Quantidade de horas: ")
		leia(quant_horas)

		escreva("Possui cadrastro? - verdadeiro/falso: ")
		leia(cadrastro)

		escreva("Tem cupom? - verdadeio/falso: ")
		leia(cupom)


    		escreva("Ficou no período noturno? - verdadeiro/falso: ")
   		 leia(ficou_noturno)

    
   		 real valor_hora = 0.0
    		se (veiculo == "carro") {
      	  valor_hora = 8.0
    		} senao se (veiculo == "moto") {
     	   valor_hora = 5.0
    		} senao {
       	 valor_hora = 12.0 
    		}

    
    		real subtotal = valor_hora * quant_horas
    		real adicional_noturno = 0.0
    
    		se (ficou_noturno) {
        adicional_noturno = 20.0
    		}

    
    		real desconto = 0.0
    		se (cupom e quant_horas >= 5) {
     	   desconto = subtotal * 0.15
    		} senao se (cupom ou quant_horas >= 8) {
      	  desconto = subtotal * 0.10
    		}

    		real valor_final = (subtotal + adicional_noturno) - desconto

    

    
    		escreva("\n================================")
    		escreva("\nO valor total a pagar é: R$ ", valor_final)
    		escreva("\n================================\n")

    
    		real valor_pago
    		escreva("Digite o valor Você está entregando: ")
    		leia(valor_pago)

    
    		se (valor_pago >= valor_final) {
        	escreva("\nTroco: R$ ", valor_pago - valor_final)
        	escreva("\nSituação: Pagamento realizado com sucesso! boa viagem!")
    		} senao {
        	escreva("\nFaltam: R$ ", valor_final - valor_pago)
        	escreva("\nSituação: Pagamento insuficiente.")
    		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 319; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */