console.log("Trabalhando com atribuição devariáveis");

const idades = 29;    // variável const - uma vez declarado é imutável no programa
const primeiroNome = "Ricardo"; 
const sobrenome = "Bugan";


console.log(primeiroNome + sobrenome); // concatenação sem o espaço

// mesmo resultado 
console.log(primeiroNome, sobrenome); 
//console.log(primeiroNome + " " + sobrenome);

let contador = 0;   //variável que permiti sobrescrever o valor.
contador = contador + 1 ; 

console.log (`Meu nome é ${primeiroNome} ${sobrenome}`)

const nomeCompleto = primeiroNome + sobrenome;

console.log(nomeCompleto);

let idade; // declarando a variável
idade = 26; // atribuindo valor a variável
idade = idade + 1;
console.log(idade)