let nome= prompt(`Digite seu nome:` );
let nota= Number(prompt(`digite sua nota: `));
let frequencia = Number(prompt(`digite sua Frequencia: `));
let trabalhoEntregue = Boolean(prompt(`trabalho entregue?`));

if(nota >= 7 && frequencia >= 75 ){
    console.log("Aprovado");
}else{
    console.log("Reprovado")
}

switch(trabalhoEntregue){
    case true:
        console.log("Trabalho entregue");
        break;
    case false:
        console.log("Trabalho não entregue");
        break;
}

alert(`Nome: ${nome} \nNota: ${nota} \nFrequencia: ${frequencia} \nTrabalho entregue: ${trabalhoEntregue}`);