import rodados.*
import dependencia.*

class Pedido{
	var distRecorrer
	var tiempoMax
	var cantPasaj
	var colIncompatibles = #{}
	
	method velocidadRequerida() = (distRecorrer/tiempoMax).truncate(0)
	method satisfacer(unAuto) {
		var color = #{unAuto.color()}
		return unAuto.velMaxima()+10>=self.velocidadRequerida() && 
			   unAuto.capacidad()>=cantPasaj && 
			   colIncompatibles.intersection(color).isEmpty()
	} 
	method acelerar() = tiempoMax-1
	method relajar() = tiempoMax+1	 
}