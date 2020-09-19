console.log(`Trabalhando com condicionais \n`);

const listasDeDestinos = new Array(
    `Salvador`,
    `São Paulo`,
    `Rio de Janeiro`,
)

const idadeComprador = 17;
const estaAcompanhada = false;
const temPassagemComprada = true;

console.log("Destinos possíveis: ");
console.log(listasDeDestinos);

// if (idadeComprador >= 18) {
//     console.log("Comprador maior de idade")
//     listasDeDestinos.splice(1, 1); // remover elemento da lista (posição, qt elemento)
//     }else if (estaAcompanhada) {
//         // A pessoa é menor de idade.
//         console.log("O menor comprador está acompanhado")
//         listasDeDestinos.splice(1, 1);
//     }else{
//         console.log("Não é maior de idade e não posso vender.")
// }


if (idadeComprador >= 18 || estaAcompanhada == true ) {
    console.log("Boa Viagem!")
    listasDeDestinos.splice(2, 1); 
}else {
    console.log("Não é maior de idade e não posso vender.\n")
}

console.log("Embarque: ")
if (idadeComprador >= 18 && temPassagemComprada){
    console.log("Boa Viagem!")
}else{
    console.log("Você não pode embarcar.")
}




