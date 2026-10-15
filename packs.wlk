

class Pack{
    const cordinador
    const beneficios
    const destino
    var precioBase 
    const duracion 
    method cambiarPrecioBase(nuevoPrecio){precioBase=nuevoPrecio}
    method duracion() = duracion
    method precioBase()=precioBase
    method beneficioEspeciales()=beneficios
    method cordinadorAcargo()=cordinador
    method destino() = destino // ambas sub clases requieren consultar el destino
    //method esPremium()
    method precioFinal() = self.precioBase() + beneficios.filter({beneficio=> beneficio.estaVigente()}).sum({beneficio=>beneficio.costo()})
}

class PackNacional inherits Pack(){
    const actividades=[]//son strings
    
    method actividades()=actividades
    //override method esPremium() =self.duracion() >10 && self.cordinadorAcargo().esAltamenteCalificado()

    method agregarActividad(nuevaActividad) {
      actividades.add(nuevaActividad)
    }
}

class PackInternacional inherits Pack(){
    const escalas
    method cantidadDeEscalas()= escalas // las que se haran para llegar
    method esDeInteres()=destino.esDeInteres()

    override method precioFinal()= super()+ 20/100 * super()
}

