let paragrafo = document.getElementById("p1");
console.log(paragrafo);
paragrafo.innerHTML = "Aula DOM - Alterando o texto do parágrafo";
let imagem2 = document.getElementById("img2");
imagem2.src = "https://picsum.photos/200";

let paragrafo2 = document.querySelector("#p2"); 
paragrafo2.innerHTML = "<strong> Paragrafo2</strong> - Alterando o texto do parágrafo 2";