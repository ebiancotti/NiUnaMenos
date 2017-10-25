
class Agresion {
	var lugar
	var agresor
	var palabras = [ ]

	constructor(_lugar, _agresor, _palabras) {
		lugar = _lugar agresor = _agresor palabras = _palabras
	}

	method esGrave() {
		return palabras.any({ unaPalabra =>
		palabrasImperdonables.EsImperdonable(unaPalabra) })
	}

	method esIgnea() {
		return palabras.contains("fuego")

	}
	
	method obtenerAgresor() = agresor
}
class AgresionFisica inherits Agresion {
	var elemento

	constructor(_lugar, _agresor, _palabras, _elemento) = super ( _lugar ,
	_agresor , _palabras ) {
		elemento = _elemento }

	override method esGrave() = true

	override method esIgnea() {
		return elemento == "combustible" or super()
	}
}

object palabrasImperdonables {
	var imperdonables = [ "perra", "matar" ]

	method EsImperdonable(palabra) {
		return imperdonables.contains(palabra)
	}
}

