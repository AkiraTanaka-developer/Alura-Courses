console.log(`Trabalhando com condicionais`);

const listasDeDestinos = new Array (
    `Salvador`,
    `São Paulo`,
    `Rio de Janeiro`,
 )

const idadeComprador = 17;
const estaAcompanhada = true;

console.log("Destinos possíveis: ");
console.log(listasDeDestinos);

if(idadeComprador >= 18){
    console.log("Comprador maior de idade")
    listasDeDestinos.splice(1,1); // remover elemento da lista (posição, qt elemento)
}else{
    // A pessoa é menor de idade.
    if(estaAcompanhada){
        console.log("O menor comprador está acompanhado")
        listasDeDestinos.splice(1,1);
    }else{
        console.log("Não é maior de idade e não posso vender.")
    }
}   

console.log(listasDeDestinos);



