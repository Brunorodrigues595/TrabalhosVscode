let usuario = "Bruno";
let tipoUsuario = 2;
let ativo = true;
let tentativas = 1;

usuario = prompt("Digite seu nome de usuário:");
tipoUsuario = Number(prompt("tipo de usuário: 1 - Administrador, 2 - Professor, 3 - Aluno"));
ativo = Boolean("O usuário está ativo?");
tentativas = (prompt("Digite o número de tentativas"));

switch(tipoUsuario){
    case 1:
        console.log("Administrador");
        break;
    case 2:
        console.log("Professor");
        break;
    default:
        console.log("Aluno");
}
    if(ativo == true){
    console.log("Usuário ativo");
    } else(ativo == false); {
    console.log("Usuário bloqueado");
    }

     if(tentativas >= 3){
        console.log("Quantidade máxima de tentativas atingida");
    }else if(tentativas < 3){
        console.log("acesso permitido");
    }
alert(`Usuário: ${usuario}, tipo de usuário: ${tipoUsuario}, ativo: ${ativo}, tentativas: ${tentativas}`);
