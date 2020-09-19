console.log(`Trabalhando com listas`);

// const salvador = `Salvador`;
// const saoPaulo = `São Paulo`;
// const rioJaneiro = `Rio de Janeiro`; 

//Ctrl + K + C (faz um grupo de comentarios)
//Ctrl + K + U - (retirar o grupo de comentario)

const listasDeDestinos = new Array (
    `Salvador`,
    `São Paulo`,
    `Rio de Janeiro`,
 )

listasDeDestinos.push(`Curitiba`) // adicionando elemento na lista

console.log("Destinos possíveis: ");
console.log(listasDeDestinos);

listasDeDestinos.splice(1,1); // remover elemento da lista (posição, qt elemento)
console.log(listasDeDestinos);

console.log(listasDeDestinos[1], listasDeDestinos[0]); // imprimir um unico elemento.


