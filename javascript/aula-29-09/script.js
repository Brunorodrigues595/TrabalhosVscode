let campoNome=document.querySelector("#nome");// Linha de codigo que seleciona o elemento com o id "nome" e armazena na variável campoNome
let campoCategoria=document.querySelector("#categoria");// Linha de codigo que seleciona o elemento com o id "categoria" e armazena na variável campoCategoria
let campoPreco=document.querySelector("#preco");// Linha de codigo que seleciona o elemento com o id "preco" e armazena na variável campoPreco
let campoDescricao=document.querySelector("#descricao");// Linha de codigo que seleciona o elemento com o id "descricao" e armazena na variável campoDescricao

let botaoVisualizar=document.querySelector("#visualizar");// Linha de codigo que seleciona o elemento com o id "visualizar" e armazena na variável botaoVisualizar
let botaoAdicionar=document.querySelector("#adicionar");// Linha de codigo que seleciona o elemento com o id "adicionar" e armazena na variável botaoAdicionar

let visualNome=document.querySelector("#visualNome");// Linha de codigo que seleciona o elemento com o id "visualNome" e armazena na variável visualNome
let visualCategoria=document.querySelector("#visualCategoria");// Linha de codigo que seleciona o elemento com o id "visualCategoria" e armazena na variável visualCategoria
let visualPreco=document.querySelector("#visualPreco");// Linha de codigo que seleciona o elemento com o id "visualPreco" e armazena na variável visualPreco
let visualDescricao=document.querySelector("#visualDescricao");// Linha de codigo que seleciona o elemento com o id "visualDescricao" e armazena na variável visualDescricao

let mensagemErro=document.querySelector("#mensagemErro"); // Linha de codigo que seleciona o elemento com o id "mensagemErro" e armazena na variável mensagemErro
let listaItens=document.querySelector("#listaItens"); // Linha de codigo que seleciona o elemento com o id "listaItens" e armazena na variável listaItens

botaoVisualizar.addEventListener("click", visualizarItem);//linha de codigo que adiciona um evento de click ao botaoVisualizar, que chama a função visualizarItem quando clicado
botaoAdicionar.addEventListener("click", adicionarItem);//linha de codigo que adiciona um evento de click ao botaoAdicionar, que chama a função adicionarItem quando clicado

function validarCampos(){//função que valida se os campos estão preenchidos
    if(
        campoNome.value==""||//verifica se o campo nome está vazio
        campoCategoria.value==""||//verifica se o campo categoria está vazio
        campoPreco.value==""||//verifica se o campo preço está vazio
        campoDescricao.value==""   //verifica se o campo descrição está vazio
    ){
        mensagemErro.innerText="preencha todos os campos."//se algum campo estiver vazio, exibe a mensagem de erro
        return false//retorna falso para indicar que a validação falhou
    }else{//se todos os campos estiverem preenchidos, limpa a mensagem de erro e retorna verdadeiro
        mensagemErro.innerText="";//limpa a mensagem de erro
        return true;//retorna verdadeiro para indicar que a validação foi concluída,
    }
}

function visualizarItem(){//função que exibe os valores dos campos preenchidos
    if(validarCampos()==false){//verifica se a validação dos campos falhou
        return;//se a validação falhou, sai da função
    }
     let nome=campoNome.value;//armazena o valor do campo nome na variável nome
     let categoria=campoCategoria.value;//armazena o valor do campo categoria na variável categoria
     let preco=campoPreco.value;//armazena o valor do campo preço na variável preco
     let descricao=campoDescricao.value;//armazena o valor do campo descrição na variável descricao
     
     visualNome.innerText=nome;//atualiza o texto do elemento visualNome com o valor da variável nome
     visualCategoria.innerText="Categoria " + categoria;//atualiza o texto do elemento visualCategoria com o valor da variável categoria
     visualPreco.innerText= `R$ ${preco}`;//atualiza o texto do elemento visualPreco com o valor da variável preco
     visualDescricao.innerText=descricao;//atualiza o texto do elemento visualDescricao com o valor da variável descricao
}

function adicionarItem(){//função que adiciona um novo item à lista de itens
    if(validarCampos()==false){//verifica se a validação dos campos falhou
        return;//se a validação falhou, sai da função
    }
    let nome=campoNome.value;//armazena o valor do campo nome na variável nome
    let categoria=campoCategoria.value;//armazena o valor do campo categoria na variável categoria
    let preco=campoPreco.value;//armazena o valor do campo preço na variável preco
    let descricao=campoDescricao.value;//armazena o valor do campo descrição na variável descricao

    let novoCard=document.createElement("div");//cria um novo elemento div e armazena na variável novoCard
    novoCard.className="card";//define a classe do novo elemento div como "card"
    
    let tituloCard=document.createElement("h3");//cria um novo elemento h3 e armazena na variável tituloCard
    tituloCard.innerText=nome;//define o texto do novo elemento h3 com o valor da variavel nome
    
    let categoriaCard=document.createElement("p");//cria um novo elemento p e armazena na variavel catagoriaCard
    categoriaCard.innerText="Categoria: " + categoria;//define o texto do novo elemento p com o valor da variavel categoria
    
    let precoCard=document.createElement("p");//cria um novo elemento p e armazena na variavel precoCard
    precoCard.innerText=`R$ ${preco}`;//define o texto do novo elemento p com o valor da variavel preco
    
    let descricaoCard=document.createElement("p");//cria um novo elemento p e armazena na variavel descricaoCard
    descricaoCard.innerText="Descrição: " + descricao;//define o texto do novo elemento p com o valor da variavel descricao

    
    novoCard.appendChild(tituloCard);//adiciona o elemento tituloCard como filho do elemento novoCard
    novoCard.appendChild(categoriaCard);//adiciona o elemento categoriaCard como filho do elemento novoCard
    novoCard.appendChild(precoCard);//adiciona o elemento precoCard como filho do elemento novoCard
    novoCard.appendChild(descricaoCard);//adiciona o elemento descricaoCard como filho do elemento novoCard

    listaItens.appendChild(novoCard);//adiciona o elemento novoCard como filho do elemento listaItens

    campoNome.value="";//limpa o valor do campo nome
    campoCategoria.value="";//limpa o valor do campo categoria
    campoPreco.value="";//limpa o valor do campo preço
    campoDescricao.value="";//limpa o valor do campo descriçao 

    visualNome.innertext="Nome do Produto";//limpa o valor do elemento visualNome
    visualCategoria.innertext="Categoria: ";//limpa o valor do elemento visualCategoria
    visualPreco.innertext="R$ 0,00";//limpa o valor do elemento visualPreco
    visualDescricao.innertext="Descrição: ";//limpa o valor do elemento visualDescricao
    mensagemErro.innerText="";//limpa a mensagem de erro
}