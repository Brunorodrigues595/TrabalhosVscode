let verdadeiro=true;
let falso=false;
let decimal=3.13;
let inteiro=10;
let texto=`Ola`;

//console.log(typeof verdadeiro)

//let opcao=2;
let opcao=Number(prompt(`selecione uma opção de 1 a 3: `));
let opcao2= prompt(`opcao2`)
console.log(typeof opcao2)
switch(opcao){
    case "1":
        console.log(`Opção 1`)
        break;
    case 2:
        console.log(`Opção 2`)
        break;
    case 3:
        console.log(`Opção 3`)
        break;
    default:
        console.log(`Opção invalida`)
}
alert(`A opção digitada foi ${opcao}`);