package br.com.comprar.quer

class Perfil {

    Integer id_perfil
    String no_perfil
    boolean st_ativo
    
    static hasMany = [usuario_perfis: Usuario_perfil, modulo_perfis: Modulo_perfil]
    
    static constraints = {
        no_perfil(maxSize: 60, nullable: true, blank: true, unique: false)
    }
    
    static mapping = {
        version false
        id name: 'id_perfil'
        st_ativo defaultValue: true
    }
}
