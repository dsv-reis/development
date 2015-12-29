package br.com.comprar.quer.seguranca

class Usuario {

    Integer id_usuario
    String no_usuario
    String de_email
    String nu_cpf
    String de_senha
    
    static hasMany = [usuario_perfis: Usuario_perfil]
    
    static constraints = {
        no_usuario(maxSize: 60, nullable: false, blank: false, unique: false)
        de_email(maxSize: 50, nullable: false, blank: true, unique: false)
        nu_cpf(maxSize: 11, nullable: false, blank: false, unique: false)
        de_senha(maxSize: 32, nullable: false, blank: false, unique: false)
    }
    
    static mapping = {
        table 'usuario'
        version false
        id name: 'id_usuario'
    }
}
