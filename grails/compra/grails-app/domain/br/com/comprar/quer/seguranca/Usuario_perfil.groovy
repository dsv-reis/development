package br.com.comprar.quer.seguranca

class Usuario_perfil {

    Integer id_usuario_perfil
    boolean st_ativo
    
    static belongsTo = [usuario: Usuario, perfil: Perfil]
    
    static constraints = {
        
    }
    
    static mapping = {
        version false
        id name: 'id_usuario_perfil'
        st_ativo defaultValue: true
        usuario column: 'id_usuario'
        perfil column: 'id_perfil'
    }
}
