import br.com.comprar.quer.Usuario
class BootStrap {

    def init = { servletContext ->
    	if (Usuario.count() == 0) {
            new Usuario(de_email: 'rayldo@gmail.com', de_senha: '123', no_usuario: 'Rayldo Simeão dos Reis', nu_cpf: '12345678900').save()
            new Usuario(de_email: 'jessica@gmail.com', de_senha: '456', no_usuario: 'Jessica Carvalho Barros dos Reis', nu_cpf: '12345678901').save()
            new Usuario(de_email: 'valentina@gmail.com', de_senha: '789', no_usuario: 'Valentina Carvalho Barros dos Reis', nu_cpf: '12345678902').save()
        }
    }
    def destroy = {
    	
    }
}
