import extras.*

class Corsa{
	var property color
	
	method capacidad() = 4
	method velMaxima() = 150
	method peso() = 1300
}

class Kwid{
	var property tanque 
	
	method capacidad() = if(self.tanque()) 3 else 4
	method velMaxima() = if(self.tanque()) 120 else 110
	method color() = "azul"
	method peso() = if(self.tanque()) 1200+150 else 1200
}

object trafic{
	var property interior 
	var property motor
	
	method capacidad() = interior.capacidad()
	method velMaxima() = motor.velMaxima()
	method color() = "blanco"
	method peso()= 4000 + interior.peso() + motor.peso()
}

class Especial{
	var property capacidad
	var property velMaxima
	var property color
	var property peso
} 