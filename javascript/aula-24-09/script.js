/*
  EXPLICAÇÃO DOS NOVOS MÉTODOS DO DOM:
  - document.createElement(): Cria um elemento HTML totalmente novo na memória do navegador a partir do JavaScript, sem precisar estar escrito no HTML original.
  - appendChild(): Insere esse elemento recém-criado dentro de um elemento pai existente na página, fazendo com que ele apareça na tela (permitindo múltiplos recados sem apagar os anteriores).
  - Diferença entre selecionar e criar: Selecionar (getElementById/querySelector) busca algo que já foi programado no HTML, enquanto criar (createElement) gera novos componentes do zero dinamicamente.
*/

const campoNome = document.getElementById('campoNome');
const campoAssunto = document.getElementById('campoAssunto');
const campoMensagem = document.getElementById('campoMensagem');

const botaoPrevia = document.getElementById('botaoPrevia');
const botaoPublicar = document.getElementById('botaoPublicar');

const caixaPrevia = document.getElementById('caixaPrevia');
const textoErro = document.getElementById('textoErro');
const listaMural = document.getElementById('listaMural');


function checarCamposPreenchidos() {
    const nome = campoNome.value.trim();
    const assunto = campoAssunto.value.trim();
    const mensagem = campoMensagem.value.trim();

    if (nome === '' || assunto === '' || mensagem === '') {
        textoErro.innerText = 'Preencha todos os campos para continuar!';
        return false;
    }

    textoErro.innerText = '';
    return true;
}


botaoPrevia.addEventListener('click', function () {
    if (!checarCamposPreenchidos()) {
        return;
    }

    
    caixaPrevia.innerHTML = `
        <strong style="color: #0f172a; font-size: 14px;">${campoAssunto.value}</strong>
        <p style="color: #334155; font-size: 13px; margin: 4px 0;">${campoMensagem.value}</p>
        <small style="color: #64748b; font-size: 11px;">Por: ${campoNome.value}</small>
    `;
});


botaoPublicar.addEventListener('click', function () {
    if (!checarCamposPreenchidos()) {
        return;
    }


    const cartaoRecado = document.createElement('div');
    cartaoRecado.classList.add('recado-criado');

    const tituloAssunto = document.createElement('h4');
    tituloAssunto.innerText = campoAssunto.value;

    const autorInfo = document.createElement('h5');
    autorInfo.innerText = `Por: ${campoNome.value}`;

    const textoMensagem = document.createElement('p');
    textoMensagem.innerText = campoMensagem.value;

    
    cartaoRecado.appendChild(tituloAssunto);
    cartaoRecado.appendChild(autorInfo);
    cartaoRecado.appendChild(textoMensagem);

   
    listaMural.appendChild(cartaoRecado);

   
    campoNome.value = '';
    campoAssunto.value = '';
    campoMensagem.value = '';
    caixaPrevia.innerHTML = '<p class="aviso-vazio">Sua prévia aparecerá aqui...</p>';
});