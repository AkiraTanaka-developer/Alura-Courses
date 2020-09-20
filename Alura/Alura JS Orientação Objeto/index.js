    //Link de proposta de atributos privados que está em processo de implementação:https://github.com/tc39/proposal-class-fields#private-fields
    // #atributo - proposta de um atributo privado em implementação.
    // " _atributo"  representa que é um atributo privado e não deve ser acessado por fora de uma classe ( boas prática).

import {Cliente} from "./Cliente.js"
import {ContaCorrente} from "./ContaCorrente.js"

const cliente1 = new Cliente();
 cliente1.nome = "Ricardo";
 cliente1.cpf = 11122233309;
 
const cliente2 = new Cliente();
 cliente2.nome = "Alice";
 cliente2.cpf = 88822233309;
 
const ContaCorrenteRicardo = new ContaCorrente();
ContaCorrenteRicardo.agencia = 1001;
ContaCorrenteRicardo.cliente = cliente1;
ContaCorrenteRicardo.depositar(500);

const ContaCorrenteAlice = new ContaCorrente ();
ContaCorrenteAlice.cliente = cliente2
ContaCorrenteAlice.agencia = 102;

let valor = 200;
ContaCorrenteRicardo.transferir (valor, ContaCorrenteAlice);

console.log("Valor: ",valor)
console.log(ContaCorrenteAlice);


