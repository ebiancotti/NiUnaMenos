
class Persona {
	var personasDelCirculo = [ ]
	var posicionAnteLaVida
	var umbralDeTolerancia
	var agresionesRecibidas = [ ]

	constructor(_personasDelCirculo, _posicionAnteLaVida, _umbralDeTolerancia, _AgresionesRecibidas) {
		personasDelCirculo = _personasDelCirculo posicionAnteLaVida =
		_posicionAnteLaVida  umbralDeTolerancia = _umbralDeTolerancia
		agresionesRecibidas = _AgresionesRecibidas
	}
	
	method cambiarPosicion(posicion){
		posicionAnteLaVida = posicion
	}

	method AgregarPersonaAlCirculo(persona) {
		personasDelCirculo.add(persona)

	}
	method esAgredida(agresion) {
		agresionesRecibidas.add(agresion)
		
	}
	method denunciar(agresion) {
		return ( agresion.esGrave() && self.AgresorDentroDelCirculo(agresion)  &&
		posicionAnteLaVida.DecidirSiDenunciar(self))
	}

	method AgresorDentroDelCirculo(agresion) {
		return personasDelCirculo.contains(agresion.obtenerAgresor())
	}

	method obtenerPosicionAnteLaVida() {
		return posicionAnteLaVida
	}
	method obtenerPersonasDelCirculo() = personasDelCirculo

	method obtenerCantidadDeAgresionesPrevias(){
		return agresionesRecibidas.size()
	}

	method ObtenerUmbralDeTolerancia() = umbralDeTolerancia

	method obtenerAgresionesRecibidas() = agresionesRecibidas
		
	method agresionGraveDentroDelCirculo(agresion){
		return self.AgresorDentroDelCirculo(agresion) && agresion.esGrave()
	}

	method FueAgredidaGravementePorFamiliar(){
		
		return agresionesRecibidas.any({agresion => self.agresionGraveDentroDelCirculo(agresion)})

	}
}
	object miedosa {

		method DecidirSiDenunciar(persona) = false

	}

	object paciente {

		method DecidirSiDenunciar(persona) {
			return persona.obtenerCantidadDeAgresionesPrevias() >
			persona.ObtenerUmbralDeTolerancia()

		}
	}

	object aguerrida {

		method DecidirSiDenunciar(persona) {
			return persona.FueAgredidaGravementePorFamiliar()
		}
	} 
	
	object militante {
		
		method DecidirSiDenunciar(persona) = true
		
		
	}





