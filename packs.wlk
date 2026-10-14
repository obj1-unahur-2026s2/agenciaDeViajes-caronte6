import beneficios.*

class Pack{
    const cordinador
    const beneficios
    const destino
    var precioBase 
    method cambiarPrecioBase(nuevoPrecio){precioBase=nuevoPrecio}
    method duracion() 
    method precioBase()=precioBase
    method beneficioEspeciales()=beneficios
    method cordinadorAcargo()=cordinador
    method destino() = destino // ambas sub clases requieren consultar el destino
    method esPremium()
    method precioFinal() = self.precioBase() + beneficios.filter({beneficio=> beneficio.estaVigente()}).sum({beneficio=>beneficio.costo()})
}

class PackNacionales inherits Pack(){
    const actividades=[]//son strings
    method provinciaDeDestino()
    method actividades()=actividades
    override method esPremium() =
     self.duracion() >10 && self.cordinadorAcargo().esAltamenteCalificado()

    method agregarActividad(nuevaActividad) {
      actividades.add(nuevaActividad)
    }
}

class PackInternacionales inherits Pack(){
    method cantidadDeEscalas()// las que se haran para llegar
    method esDeInteres()=destino.esDeInteres()
    override method esPremium() =
        self.esDeInteres() && self.duracion() >20 && self.cantidadDeEscalas() < 1
    
    override method precioFinal()= super()+ 20/100 * super()
}

