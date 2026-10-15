
function mensagem() { return "🎡 Bem-vindo ao Parque SCS"; } 
function mensagem2() { alert("Prepare-se para a diversão!"); } 
function soma(precoIngresso, taxaConveniencia) { return precoIngresso + taxaConveniencia; } 

alert(mensagem()); 
mensagem2(); 


let atracoes = ["Montanha-Russa", "Roda-Gigante", "Barco Viking", "Carrinho de Bate-Bate"];
alert(`Hoje temos ${atracoes.length} atrações principais funcionando!`);

let nome = prompt("Digite seu nome:"); 
let idade = Number(prompt("Digite sua idade:")); 
let confirmacao = confirm("Você quer ver as regras de segurança do parque?"); 

if (confirmacao) { 
    if (nome.length > 10) { 
        alert(" Seu nome é bem grande (Ele é maior que 10 caracteres)"); 
    } else { 
        alert("Regra principal: Divirta-se com segurança!"); 
    } 
} else { 
    alert("Você não quis ver as regras, mas preste atenção aos avisos!"); 
} 


switch (idade) { 
    case 17: alert("Falta apenas 1 ano para você ser maior de idade!");
     break; 

    case 18: alert("Você tem 18 anos! Ganhou um broche de maioridade do parque! "); 
    break; 

    case 19: alert("Você tem 19 anos! Ganhou um copo personalizado do parque! "); 
    break; 

    default: alert("Você não tem 17, 18 nem 19 anos, mas aproveite os brinquedos!"); 
} 

let idade_cliente = idade; 
while (idade_cliente < 18) { 
    alert(`Identificamos que você tem ${idade_cliente} anos. Aguarde a liberação da área infantil...`); 
    idade_cliente++; 
} 
alert("Acesso liberado para a área principal do parque!"); 


let brinquedosEscolhidos = [];
for (let i = 0; i < atracoes.length; i++) {
    let querIr = confirm(`Você deseja ir na atração: ${atracoes[i]}?`);
    if (querIr) {
        brinquedosEscolhidos.push(atracoes[i]); 
    }
}


if (brinquedosEscolhidos.length > 0) {
    alert(`Seu roteiro do dia está pronto! Você vai em: ${brinquedosEscolhidos.join(", ")}`);
} else {
    alert("Você resolveu apenas passear e não escolheu nenhum brinquedo.");
}

let precoBase = 50; 
let taxa = 5; 
let valorTotal = soma(precoBase, taxa); 

alert(`Obrigado pela visita, ${nome}! O valor total do seu ingresso com taxas foi de: R$ ${valorTotal},00.`);
