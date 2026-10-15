programa
{
    funcao inicio()
    {
        
        cadeia nome_personagem
        cadeia classe_personagem
        inteiro nivel
        inteiro pontos_vida
        inteiro energia
        inteiro moedas
        cadeia possui_arma, possui_cura, possui_chave

        cadeia status_missao 
        cadeia status_sala
        cadeia status_compra 

        
        escreva("Nome do personagem: ")
        leia(nome_personagem)

        escreva("Classe do personagem: ")
        leia(classe_personagem)

        escreva("Nível: ")
        leia(nivel)

        escreva("Quantidade de pontos de vida: ")
        leia(pontos_vida)

        escreva("Quantidade de energia: ")
        leia(energia)

        escreva("Quantidade de moedas: ")
        leia(moedas)

        escreva("Possui arma? (s/n): ")
        leia(possui_arma)

        escreva("Possui item de cura? (s/n): ")
        leia(possui_cura)

        escreva("Possui chave especial? (s/n): ")
        leia(possui_chave)

        
        se (nivel >= 10 e pontos_vida >= 50 e (possui_arma == "s" ou possui_arma == "S")) {
            status_missao = "Apto para a missão principal"
        } 
        
        senao se (nivel >= 5 e ((possui_cura == "s" ou possui_cura == "S") ou energia >= 70)) {
            status_missao = "Apto para a missão alternativa"
        } 
        senao {
            status_missao = "Ainda não está preparado"
        }

        
        se ((possui_chave == "s" ou possui_chave == "S") e moedas >= 100) {
            status_sala = "Acesso permitido à sala especial"
        } senao {
            status_sala = "Acesso negado à sala especial"
        }

        se (moedas >= 50) {
            moedas = moedas - 50
            status_compra = "Item comprado com sucesso"
        } senao {
            status_compra = "Moedas insuficientes para a compra"
        }

       
        escreva("\n--- RELATÓRIO DO PERSONAGEM ---\n")
        escreva("Nome: ", nome_personagem, "\n")
        escreva("Classe: ", classe_personagem, "\n")
        escreva("Nível: ", nivel, "\n")
        escreva("Pontos de vida: ", pontos_vida, "\n")
        escreva("Energia: ", energia, "\n")
        escreva("Moedas restantes: ", moedas, "\n")
        escreva("Situação da missão: ", status_missao, "\n")
        escreva("Situação da sala especial: ", status_sala, "\n")
        escreva("Situação da compra: ", status_compra, "\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 988; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */