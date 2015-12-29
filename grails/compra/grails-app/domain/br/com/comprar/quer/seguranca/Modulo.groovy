package br.com.comprar.quer.seguranca

class Modulo {

    Integer id_modulo
    String no_modulo
    String de_url
    Modulo modulos
    
    static hasMany = [modulo_perfis: Modulo_perfil]
    
    static constraints = {
        no_modulo(maxSize: 30, nullable: false, blank: false, unique: false)
        de_url(maxSize: 100, nullable: true, blank: true, unique: false)
        modulos(nullable: true)
    }
    
    static mapping = {
        version false
        id name: 'id_modulo'
        modulos column: 'id_pai'
    }
}
