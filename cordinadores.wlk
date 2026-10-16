import roles.*


class Cordinador{
    var viajesRealizados=0
    var añosDeExperiencia    
    var rol //puede ser guia,asistenteLogico o acompañante
    var estaMotivado = true
    method motivar(){estaMotivado=true}
    method desmotivar(){estaMotivado=false}
    method viajesRealizados()= viajesRealizados
    method estaMotivado() = estaMotivado
    method añosDeExperiencia() = añosDeExperiencia
    method viajar(cantidadDeViajes) {viajesRealizados+=cantidadDeViajes}
    method cambiarRol(nuevoRol){
        if(![guia,asistenteLogistico,acompañante].contains(nuevoRol)){
            self.error("no existe ese rol")
        }
        rol=nuevoRol
    }

    method initialize(){
        self.cambiarRol(rol)

    }

    method aumentarAñosDeExperiencia(){añosDeExperiencia+=1}
    method esAltamenteCalificado()= viajesRealizados>20 && rol.esCalificado(self)
}