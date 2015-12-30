package br.com.comprar.quer

import br.com.comprar.quer.Usuario

class UsuarioController {

    def index() {
        redirect(action:'listar')
    }
    
    def listar() {
        def usuarios = Usuario.findAll()
        render (view:'usuario', model:[usuarios: usuarios])
    }

    def salvar() {

        def usuario = Usuario.findByNu_cpf(params.nu_cpf)
        if(usuario && usuario != null) {
            if(params.id_usuario) {
                if(params.id_usuario as int != usuario.id_usuario) {
                    flash.error = "cpf já cadastrado no sistema"
                    redirect(action:'listar')
                }
            }
            else {
                flash.error = "cpf já cadastrado no sistema"
                redirect(action:'listar')
            }
        }
        else {
            if(params.nu_cpf.size() != 11) {
                flash.error = "CPF deve possuir onze dígitos"
                redirect(action:'listar')
                return
            }


            params.de_senha = gerarSenha()

            usuario = new Usuario(params)
            try {
                if(usuario.save(flush:true)){
                    flash.message = "usuario cadastrado com sucesso"
                    redirect(action:'listar')
                }       
            }
            catch(Exception e) {
                render "Erro ao processar esta operação"
            }            
        }
    }

    def editar() {
        def usuario = Usuario.findById_usuario(params.id)
        if(usuario){
            render (view:'usuario', model:[usuario: usuario])
        }
        else {
            render "Usuário não encontrado"
            return
        }
    }

    public String gerarSenha() {
        def pool = [0..9].flatten()
        Random rand = new Random(System.currentTimeMillis())

        def passChars = (0..5).collect { pool[rand.nextInt(pool.size())] }
        return passChars.join()
    }

    // index
    // salvar
    // excluir
    // listar todos
    // listar por id
}
