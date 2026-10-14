class Pack{
    const cordinador
    const beneficios
    
    method duracion() = diasQueQuedan
    method precioBase()
    method beneficioEspeciales()=beneficios
    method cordinadorAcargo()=cordinador
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

