class Beneficio{
    const tipo //string
    const costo
    method tipo() = tipo
    method costo() = costo
    method estaVigente()
}

class TransladoPrivado inherits Beneficio(tipo="traslado privado",costo=0){

}