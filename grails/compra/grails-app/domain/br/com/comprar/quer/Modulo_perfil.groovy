package br.com.comprar.quer

class Modulo_perfil {

    Integer id_modulo_perfil
    boolean st_ativo
    
    static belongsTo = [modulo: Modulo, perfil: Perfil]
    
    static constraints = {
        
    }
    
    static mapping = {
        version false
        id name: 'id_modulo_perfil'
        st_ativo defaultValue: true
        modulo column: 'id_modulo'
        perfil column: 'id_perfil'
    }
}
