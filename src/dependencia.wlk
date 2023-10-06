import pedidos.*

class Dependencia{
	
	var flota=[]
	const property empleados
	const listPedidos= []
	
	method agregarAFlota(rodado) = flota.add(rodado)
	method agregarVarios(lista) = flota.addAll(lista)
	method lista()=flota.asList()
	method quitarDeFlota(rodado) = flota.remove(rodado)
	method pesoTotalFlota() = flota.sum({r => r.peso()})
	method estaBienEquipada() = flota.size()>=3 && flota.all({r => r.velMaxima()>=100})
	method rodaDeColor(color) = flota.filter({r => r.color().equals(color)})
	method capacidadTotalEnColor(color) = self.rodaDeColor(color).sum({r => r.capacidad()})
	method colorDeRodadoMasRapido() = flota.max({r => r.velMaxima()}).color()
	method capacidadFaltante() = (self.empleados()- flota.sum({r => r.capacidad()})).abs()
	method esGrande() = self.empleados() >=40 && flota.size()>=5  
	method agregarPedido(unPedido) = listPedidos.add(unPedido)
	method quitarPedido(unPedido) = listPedidos.remove(unPedido)
	method totalPasajeros() = listPedidos.sum({p => p.cantPasaj()})
	method insatisfecho() {
		const noPuede=[]
			(0..listPedidos.size()-1).forEach({p =>
				(0..flota.size()-1).forEach({f => if (not listPedidos.get(p).satisfacer(flota.get(f))) noPuede.add(listPedidos.get(p)) })
			})//en algun lado va un all
			return noPuede
	}
	
	method colorIncompatible(unColor) =	(0..listPedidos.size()-1).all({p => listPedidos.get(p).colIncompatibles().asList().contains(unColor)})
	method relajarTodos(){(0..listPedidos.size()-1).forEach({p => listPedidos.get(p).relajar()})}
	
}