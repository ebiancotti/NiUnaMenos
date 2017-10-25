
class Persona {

	var personasDelCirculo = []

	constructor(_personasDelCirculo){
		personasDelCirculo = _personasDelCirculo
	}

	method AgregarPersonaAlCirculo(persona){
		personasDelCirculo.add(persona)
		
	}
	method denunciar(agresion){
		return (agresion.esGrave() && self.AgresorDentroDelCirculo(agresion))
	}

	method AgresorDentroDelCirculo(agresion) {
		return  personasDelCirculo.contains(agresion.obtenerAgresor())
	}

}