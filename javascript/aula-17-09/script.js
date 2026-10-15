
function calcularFrete() {
    let entrada = prompt("Digite o valor da compra (R$):");
    if (entrada === null) return; 
    let valor = Number(entrada);
    let mensagem = "";

    if (valor >= 150) {
        mensagem = "Parabéns! Você ganhou Frete Grátis.";
    } else if (valor > 0 && valor < 150) {
        let falta = 150 - valor;
        mensagem = `Frete normal aplicado. Faltam R$ ${falta.toFixed(2)} para frete grátis.`;
    } else {
        mensagem = "Por favor, insira um valor válido.";
    }
    alert(mensagem);
}


function verificarSetor() {
    let codigo = prompt("Escolha o setor:\n1 - Suporte Técnico\n2 - Financeiro\n3 - Vendas");
    if (codigo === null) return;
    let destino = "";

    switch (codigo) {
        case "1":
            destino = "Encaminhando para o Suporte Técnico...";
            break;
        case "2":
            destino = "Encaminhando para o setor Financeiro...";
            break;
        case "3":
            destino = "Encaminhando para equipe de Vendas...";
            break;
        default:
            destino = "Código inválido.";
    }
    alert(destino);
}


function simularEstoque() {
    let estoque = 100;
    let texto = "";

    while (estoque > 0) {
        texto += `Unidades restantes no estoque: ${estoque}\n`;
        estoque--;
    }
    texto += "Atenção: Estoque Esgotado! Reposição necessária.";
    alert(texto);
}


function calcularMedia() {
    let notas = [7.5, 8.0, 9.2, 6.5];
    let soma = 0;

    for (let i = 0; i < notas.length; i++) {
        soma += notas[i];
    }

    let media = soma / notas.length;
    alert(`Notas cadastradas: [${notas.join(", ")}]\nMédia final: ${media.toFixed(2)}`);
}


function gerenciarTarefas() {
    let tarefasDiarias = ["Estudar JavaScript", "Fazer compras"];
    

    let nova = prompt(`Fila atual: [ ${tarefasDiarias.join(" | ")} ]\nDigite uma nova tarefa para adicionar (push):`);
    if (nova && nova.trim() !== "") {
        tarefasDiarias.push(nova);
    }

    
    tarefasDiarias.sort();
    alert(`Após ordenar (sort) e adicionar, total: ${tarefasDiarias.length}\nFila: [ ${tarefasDiarias.join(" | ")} ]`);


    let removido = tarefasDiarias.pop();
    alert(`Removido o último elemento (pop): ${removido}\nFila final: [ ${tarefasDiarias.join(" | ")} ]`);
}


function verificarIdade() {
    let entrada = prompt("Digite a sua idade:");
    if (entrada === null) return;
    let idade = Number(entrada);
    
    let status = idade >= 18 ? "Acesso permitido: Maior de idade." : "Acesso negado: Menor de idade.";
    alert(status);
}


function mostrarAssentos() {
    let cinema = [
        ['L', 'L', 'O'],
        ['O', 'L', 'L'],
        ['L', 'O', 'O']
    ];

    let texto = "Mapa da Sala (L = Livre, O = Ocupado):\n\n";
    
    for (let i = 0; i < cinema.length; i++) {
        texto += `Fileira ${i + 1}: `;
        for (let j = 0; j < cinema[i].length; j++) {
            texto += `[${cinema[i][j]}] `;
        }
        texto += "\n";
    }
    alert(texto);
}