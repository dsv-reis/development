package br.com.comprar.quer.acesso

class AcessoController {

    def index() {
        render view:'login'
    }
    
    def form() {
        render view:'cadastro'
    }
    
    
}
