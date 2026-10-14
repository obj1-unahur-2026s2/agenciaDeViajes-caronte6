class Pack{
    method duracion()
    method precioBase()
    method beneficioEspeciales()
    method cordinadorAcargo()
    method destino() // ambas sub clases requieren consultar el destino
}

class PackNacionales inherits Pack(){
    const actividades=[]//son strings
    method provinciaDeDestino()
    method actividades()=actividades
}

class PackInternacionales inherits Pack(){
    method cantidadDeEscalas()// las que se haran para llegar
    method esDeInteres(unDestino){}

}

