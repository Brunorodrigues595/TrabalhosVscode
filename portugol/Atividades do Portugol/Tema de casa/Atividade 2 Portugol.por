programa
{
	inclua biblioteca Matematica
    funcao inicio()
    {
      
        cadeia nome
        inteiro idade
        cadeia escolaridade
        real nota
        cadeia possui_doc, tem_autorizacao, quer_bolsa

        cadeia situacao_inscricao 
        cadeia situacao_bolsa 
        cadeia status_doc 
        cadeia status_aut 

      
        escreva("Nome do candidato: ")
        leia(nome)

        escreva("Idade: ")
        leia(idade)

        escreva("Escolaridade (fundamental, medio ou superior): ")
        leia(escolaridade)

        escreva("Nota obtida no processo seletivo: ")
        leia(nota)

        escreva("Possui documento de identificação? (s/n): ")
        leia(possui_doc)

        escreva("Possui autorização do responsável? (s/n): ")
        leia(tem_autorizacao)

        escreva("Está concorrendo a uma bolsa? (s/n): ")
        leia(quer_bolsa)

       
        se (possui_doc == "s" ou possui_doc == "S") {
            status_doc = "Possui documento"
        } senao {
            status_doc = "Não possui documento"
        }

        se (tem_autorizacao == "s" ou tem_autorizacao == "S") {
            status_aut = "Possui autorização"
        } senao {
            status_aut = "Não possui autorização"
        }

       
        se (idade >= 18) {
            se ((possui_doc == "s" ou possui_doc == "S") e nota >= 6.0) {
                situacao_inscricao = "Inscrição aceita"
            } senao {
                situacao_inscricao = "Inscrição recusada"
            }
        } 
        
        senao se (idade >= 16) {
            se ((possui_doc == "s" ou possui_doc == "S") e 
                (tem_autorizacao == "s" ou tem_autorizacao == "S") e 
                nota >= 6.0) {
                situacao_inscricao = "Inscrição aceita"
            } senao {
                situacao_inscricao = "Inscrição recusada"
            }
        } 
       
        senao {
            situacao_inscricao = "Inscrição recusada"
        }

       
        se (quer_bolsa == "s" ou quer_bolsa == "S") {
            se (nota >= 8.0) {
                situacao_bolsa = "Apto a concorrer à bolsa"
            } senao {
                situacao_bolsa = "Não apto à bolsa (nota insuficiente)"
            }
        } senao {
            situacao_bolsa = "Não está concorrendo à bolsa"
        }

       
        escreva("\n--- RESULTADO DA ANÁLISE ---\n")
        escreva("Nome do candidato: ", nome, "\n")
        escreva("Idade: ", idade, "\n")
        escreva("Escolaridade: ", escolaridade, "\n")
        escreva("Nota: ", nota, "\n")
        escreva("Situação da documentação: ", status_doc, "\n")
        escreva("Situação da autorização: ", status_aut, "\n")
        escreva("Situação da inscrição: ", situacao_inscricao, "\n")
        escreva("Situação da bolsa: ", situacao_bolsa, "\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 337; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */