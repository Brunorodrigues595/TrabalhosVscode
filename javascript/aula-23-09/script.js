//selecionar o botao
let botaoatualizar = document.querySelector("#atualizar");

//criar um evento quando o botao for pressionado
botaoatualizar.addEventListener("click", atualizarPerfil);
//o botao vai ficar esperado um click e quando houver o click chama a função atualizar perfil

function atualizarPerfil(){
    let campoNome=document.querySelector("#nome");
    let campoProfissao=document.querySelector("#profissao");
    let campoCidade=document.querySelector("#cidade");
    let campoDescricao=document.querySelector("#descricao");
    // localizando os campos do formilario e armazendo eles nas variaveis


    let  nomePerfil=document.querySelector("#nomePerfil");
    let  profissaoPerfil=document.querySelector("#profissaoPerfil");
    let  cidadePerfil=document.querySelector("#cidadePerfil");
    let  descricaoPerfil=document.querySelector("#descricaoPerfil");

    if(campoNome.value==""){
        nomePerfil.innerText="imforme um nome";
    }else{
        nomePerfil.innerText=campoNome.value;
    }
    profissaoPerfil.innerText=campoProfissao.value;
    cidadePerfil.innerText=campoCidade.value;
    descricaoPerfil.innerText=campoDescricao.value;
}