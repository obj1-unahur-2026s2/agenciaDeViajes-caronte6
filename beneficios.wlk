class Beneficio{
    const tipo //string
    var costo
    var estaVigente = true
    method tipo()  //string
    method costo() = costo
    method estaVigente()= estaVigente
    
    method desabilitarBeneficio() {
      estaVigente= false
    }
    method habilitarBeneficio() {
      estaVigente= true
    }
    method cambiarCostoA(nuevoCosto){costo=nuevoCosto}
}