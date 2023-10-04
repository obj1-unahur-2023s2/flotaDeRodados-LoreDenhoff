
class Dependencia{
	
	var flota=[]
	//const property rodCompartido=[]
	const property empleados
	
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
	
	
	
}