
class Agresion {

	var lugar
	var agresor
	var palabras = []
		
	constructor(_lugar, _agresor, _palabras){

	lugar=_lugar
	agresor = _agresor
	palabras = _palabras
	
}

	method esGrave(){
		return palabras.any({unaPalabra => palabrasImperdonables.EsImperdonable(unaPalabra)})
	}
	
	method esIgnea(){
		return palabras.contains("fuego")
		
		
	}
	
	
}

	object palabrasImperdonables {

	var imperdonables =["perra", "matar"]

	method EsImperdonable(palabra){
		return imperdonables.contains(palabra)
	}

}

