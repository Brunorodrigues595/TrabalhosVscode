let motorista = "Marcos";
let tipoVeiculo = 2;
let horas = 8;
let clienteCadastrado = true;
let ficouDuranteNoite = false;

if (horas <= 0) {
    console.log("Quantidade de horas inválida");
} else {
    let valorPorHora = 0;
    let nomeVeiculo = "";
    let tipoValido = true;

    switch (tipoVeiculo) {
        case 1:
            valorPorHora = 4;
            nomeVeiculo = "Moto";
            break;
        case 2:
            valorPorHora = 7;
            nomeVeiculo = "Carro";
            break;
        case 3:
            valorPorHora = 10;
            nomeVeiculo = "Utilitário";
            break;
        default:
            console.log("Tipo de veículo inválido");
            tipoValido = false;
            break;
    }

    if (tipoValido) {
        let valorHoras = horas * valorPorHora;
        let percentualDesconto = 0;

        if (clienteCadastrado && horas >= 8) {
            percentualDesconto = 0.20;
        } else if (clienteCadastrado && horas >= 4 && horas <= 7) {
            percentualDesconto = 0.10;
        } else if (!clienteCadastrado && horas >= 8) {
            percentualDesconto = 0.05;
        } else {
            percentualDesconto = 0;
        }

        let valorDesconto = valorHoras * percentualDesconto;
        let taxaNoturna = ficouDuranteNoite ? 25.00 : 0;
        let valorFinal = (valorHoras - valorDesconto) + taxaNoturna;

        console.log("Motorista: " + motorista);
        console.log("Tipo de veículo: " + nomeVeiculo);
        console.log("Horas estacionadas: " + horas);
        console.log("Cliente cadastrado: " + (clienteCadastrado ? "Sim" : "Não"));
        console.log("Ficou durante a noite: " + (ficouDuranteNoite ? "Sim" : "Não"));
        console.log("Valor das horas: R$ " + valorHoras.toFixed(2));
        console.log("Desconto: R$ " + valorDesconto.toFixed(2));
        console.log("Taxa noturna: R$ " + taxaNoturna.toFixed(2));
        console.log("Valor final: R$ " + valorFinal.toFixed(2));
    }
}