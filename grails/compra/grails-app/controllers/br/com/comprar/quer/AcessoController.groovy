package br.com.comprar.quer

import br.com.comprar.quer.Usuario

class AcessoController {

    def index() {
        render view:'login'
    }
    
    def form() {
        render view:'form'
    }
    
    def validar() {
        
        def usuario = Usuario.findByDe_emailAndDe_senha(params.email, params.senha)
        session.user = usuario
        if(usuario && usuario != null) {
            redirect(controller:'usuario',action:'index')
        }
        else {
            flash.error = "Usuário ou senha incorretos"
            redirect(controller:'acesso', action:'index')
        }
    }
}
