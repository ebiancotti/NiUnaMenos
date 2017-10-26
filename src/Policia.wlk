import Agresiones.*
import Personas.*

object policia {

	var registroDeDenuncias = []
	var numDenuncia = 0
	
	method registrarDenuncia(agresion,persona){
		self.DenunciaMas()
		registroDeDenuncias.add(self.crearDenuncia(agresion, persona))
		
		
	}

	method DenunciaMas(){
		numDenuncia = numDenuncia +1
	}
	
	method obtenerRegistro() = registroDeDenuncias

	method crearDenuncia(agresion, persona){
		return new Denuncia (numDenuncia, agresion, agresion.obtenerAgresor(), persona)
	}
	
	method registroContieneDenuncia(numero){
		return registroDeDenuncias.contains(numero)
		
	}
	
	method obtenerDenuncia(numero){
		return (registroDeDenuncias.filter({num => self.registroContieneDenuncia(num)})).last()
		
	}
	
}

	class Denuncia{
		
		var numero
		var agresion
		var victimario
		var victima
		
		
		constructor(_numero, _agresion, _victimario, _victima){
			numero = _numero
			agresion = _agresion
			victimario = _victimario
			victima = _victima
			
			
		}
		
		
	}