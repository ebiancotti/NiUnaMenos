
class Persona {

	var personasDelCirculo = []
	var posicionAnteLaVida
	var cantidadDeAgresionesPrevias
	var umbralDeTolerancia

	constructor(_personasDelCirculo, _posicionAnteLaVida, _cantidadDeAgresionesPrevias, _umbralDeTolerancia){
		personasDelCirculo = _personasDelCirculo
		posicionAnteLaVida = _posicionAnteLaVida
		cantidadDeAgresionesPrevias = _cantidadDeAgresionesPrevias
		umbralDeTolerancia = _umbralDeTolerancia
		
	}

	method AgregarPersonaAlCirculo(persona){
		personasDelCirculo.add(persona)
		
	}
	method denunciar(agresion){
		return (agresion.esGrave() && self.AgresorDentroDelCirculo(agresion)) && posicionAnteLaVida.DecidirSiDenunciar(self)
	}

	method AgresorDentroDelCirculo(agresion) {
		return  personasDelCirculo.contains(agresion.obtenerAgresor())
	}

	method obtenerPosicionAnteLaVida(){
		return posicionAnteLaVida
	}
	
	method obtenerCantidadDeAgresionesPrevias() = cantidadDeAgresionesPrevias

	method umbralDeTolerancia() = umbralDeTolerancia

}

object miedosa{
	
	method DecidirSiDenunciar(persona) = false

}

object paciente{
	
	
	
	method DecidirSiDenunciar(persona){
		return persona.obtenerCantidadDeAgresionesPrevias() > persona.umbralDeTolerancia()
		
	}
}
