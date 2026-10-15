
let nomePerfil = document.getElementById("nome");
let funcaoPerfil = document.getElementById("funcao");
let bioPerfil = document.getElementById("bio");
let hobbyImagem = document.getElementById("hobby-img");


nomePerfil.innerHTML = "Bruno Augusto Rodrigues";
funcaoPerfil.innerHTML = "Sou Estudante do Sesc santa cruz do sul e fazendo curso tecnico de programação com parceria com o senac. gosto de Tecnologia e jogos ";
bioPerfil.innerHTML = "Nas horas vagas, gosto de jogar no pc, assistir series e filmes .";


hobbyImagem.src = "pc.jpg";

let botaoSeguir = document.getElementById("btn-seguir");
let spanContador = document.getElementById("contador");

let quantidadeSeguidores = 66;
let estaSeguindo = false;

botaoSeguir.addEventListener("click", function() {
    if (estaSeguindo === false) {
        quantidadeSeguidores++;
        spanContador.innerHTML = quantidadeSeguidores;
        botaoSeguir.innerHTML = "Seguindo";
        estaSeguindo = true;
    } else {
        quantidadeSeguidores--;
        spanContador.innerHTML = quantidadeSeguidores;
        botaoSeguir.innerHTML = "Seguir";
        estaSeguindo = false;
    }
});

let botaoTema = document.getElementById("btn-tema");

botaoTema.addEventListener("click", function() {
    document.body.classList.toggle("modo-escuro");
    
    if (document.body.classList.contains("modo-escuro")) {
        botaoTema.innerHTML = "Modo Claro";
    } else {
        botaoTema.innerHTML = "Mudar Tema";
    }
});