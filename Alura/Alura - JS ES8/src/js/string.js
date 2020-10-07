const nome = 'Akira';
const sobrenome = 'Tanaka';

// pad start

const nomeCompleto = `${nome} ${sobrenome}`

const nomeCompletoStringPadding = sobrenome.padStart (11, nome);

document.getElementById('stringPad').innerHTML = nomeCompletoStringPadding;

// pad end 

const nomeCompletoPadEnd = nome.padEnd(11, sobrenome);

document.getElementById('stringPadEnd').innerHTML = nomeCompletoPadEnd

const numeroCartao = '4890';

document.getElementById('numeroCartao').innerHTML=numeroCartao.padStart(16, "*");