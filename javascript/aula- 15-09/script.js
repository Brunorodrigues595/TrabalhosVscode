let nome=prompt("Digite um texto: ");
let idade=Number(prompt("Digite sua idade: "));
let confirmacao=confirm("Voce quer ver o texto")

/*
    alert(`O texto digitado foi: ${texto_digitado}`);
    if(texto_digitado>10){
        alert("O texto digitado é maior que 10.");
    }

    else{
    alert("Você nao quis ver o texto digitado")
    
}

switch(idade){
    
    case idade<18:
        alert("Você é menor de idade");
        break;

    case 18:
        alert("Você tem 18 anos");
        break;
    
    case 19:
        alert("Você tem 19 anos");
        break;

    default:
        alert("voce nao tem 18 nem 19 anos");
}

*/

while(idade<18){
    alert("Você é menor de idade");
    idade++;
    //idade=idade+1;
}
alert("Você é maior de idade");
//let i;
//for(let i=0;i<10;i++){
    ////alert(`contagem: ${i}`);

//}

// operadores logicos: && (E), || (OU), ! (NÃO)

// operadores aritméticos: +, -, *, /, %, ++, -- */

/* comparadores: ==, ===, !=, !==, >, <, >=, <=
==igualdade (valor)
=== igualdade estrita (valor e tipo)
!= diferente (valor)
!== diferente estrito (valor e tipo)
*/

//operador ternário: (condição) ? valor_se_verdadeiro : valor_se_falso

//let pode_votar =idade>=16 ? "Você pode votar" : "Você não pode votar";
//alert(pode_votar);

/*sem o ternario seria nessesario fazer assim:
if(idade>=16){
    alert("Você pode votar");
} else {
    alert("Você não pode votar");
}
*/
alert(mensagem());
mensagem2();
alert(soma(5,10));
alert(soma(10,20));
function mensagem(){
    return("olá, mundo!");
}

function mensagem2(){
    alert("olá, mundo2!");
}

function soma(a,b){
    return a+b;
}