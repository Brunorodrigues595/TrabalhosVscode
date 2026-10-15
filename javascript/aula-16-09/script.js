//arrays - vetores

let carros = [
    "BMW",
    "Mercedes",
    "Audi",
    "Ferrari"
    ];
// se nao utilizasse o vetor, teriamos que criar uma variavel para cada carro.
/*
alert(carros[2]); // Audi

let carro_caro= carros[3]; // Ferrari   
alert(carro_caro);
*/
/*
alert(carros.length); // length - quantidade de elementos do vetor
alert(carros.sort());// sort - ordena os elementos do vetor
alert(carros.length-1); // length-1 - quantidade de elementos do vetor menos 1, para pegar o ultimo elemento do vetor

carros.push("Porsche"); // push - adiciona um elemento no final do vetor
carros.push("Lamborghini");
carros.pop(); // pop - remove o ultimo elemento do vetor



for(let i=0; i<carros.length; i++){
    alert(carros[i]); 
}
*/
//arrays bidimensional
let jogos  = [
    ["fifa", "pes", "nba"],
    ["gta", "mafia", "need for speed"],
    ["call of duty", "battlefield", "far cry"]
];

//alert(jogos[1][2]); // need for speed
//alert(jogos[2][1]); // battlefield

for(let i=0; i<jogos.length; i++){
    for(let j=0; j<jogos[i].length; j++){
        alert(jogos[i][j]);
    }
}