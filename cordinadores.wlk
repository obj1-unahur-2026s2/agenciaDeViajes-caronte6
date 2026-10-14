


class Cordinador{
    var viajesRealizados=0
    const añosDeExperiencia    
    var rol //puede ser guia,asistenteLogico o acompañante
    method viajesRealizados()= viajesRealizados
    method estaMotivado() 
    method añoDeExperiencia() = añosDeExperiencia
    method hacerUnViaje() {viajesRealizados+=1}
    method cambiarRol(nuevoRol){
        if(![guia,asistenteLogico,acompañante].contains(nuevoRol)){
            self.error("no existe ese rol")
        }
        rol=nuevoRol
    }
}