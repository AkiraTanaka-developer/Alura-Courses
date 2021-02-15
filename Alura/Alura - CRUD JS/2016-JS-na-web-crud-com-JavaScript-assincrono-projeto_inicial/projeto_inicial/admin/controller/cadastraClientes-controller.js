import { clienteService } from '../service/cliente-service.js'

const formulario = document.querySelector('[data-form]')

const cadastrar = async () => {
    
   const formularios = await formulario.addEventListener('submit',(evento) => {
        try {
            evento.preventDefault()
        
            const nome = evento.target.querySelector('[data-nome]').value
            const email = evento.target.querySelector('[data-email]').value
        
            clienteService.criaCliente(nome, email)
                .then (() => {
                    window.location.href = '../telas/cadastro_concluido.html'
                })
        }
        catch {
            console.log(erro);
            window.location.href = '../telas/erro.html'
        }
    })
}

cadastrar()
