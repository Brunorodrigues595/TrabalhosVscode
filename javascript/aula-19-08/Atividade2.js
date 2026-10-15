let nota = 7
let ano = "primeiro";


if(nota>=7 && ano==="primeiro"){
    console.log(`aprovado`);
    console.log(`Você aprovado para o segundo ano.`);
}else if(nota >= 5 && nota <= 7) {
    console.log("Em recuperação.");
} else {
    console.log("Reprovado.");
}

if(nota>=7 && ano==="segundo"){
    console.log(`aprovado`);
    console.log(`Você aprovado para o terceiro ano.`);
}else if(nota >= 5 && nota <= 7) {
    console.log("Em recuperação.");
} else {
    console.log("Reprovado.");
}
if(nota>=7 && ano==="terceiro"){
    console.log(`aprovado`);
    console.log(`Você se formou`);
}else if(nota >= 5 && nota <= 7) {
    console.log("Em recuperação.");
} else {
    console.log("Reprovado.");
}
