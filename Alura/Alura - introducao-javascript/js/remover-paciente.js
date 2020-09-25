var pacientes = document.querySelectorAll(".paciente");

var tabela = document.querySelector("table");

tabela.addEventListener("dblclick", function(event){
    event.target.parentNode.classList.add("fadeOut"); // transição de sumir

    setTimeout(function(){
        event.target.parentNode.remove();           //aguarda 500ms para retirar linha
    }, 500);                        

    // var alvoEvento = event.target;
    // var paiDoAlvo = alvoEvento.parentNode; // TR = paciente = remove-paciente
    // paiDoAlvo.remove();
});
