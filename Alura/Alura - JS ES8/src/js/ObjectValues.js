const cursosChave = Object.keys(cursos).map(chave => cursos[chave])

document.getElementById('cursosChave').innerHTML = `<ul> ${cursosChave.map(curso => `<li>${curso}</li>`)}</ul>`;

const cursosKeys = Object.values(cursos);
renderizarLista("cursosValues", cursosKeys);