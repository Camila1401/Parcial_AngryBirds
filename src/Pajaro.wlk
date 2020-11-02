import obstaculos.*
import isla.*

class PajaroComun{
	
	var cantidadVecesQueSeEnojo = 0
	var property ira = 10
	var property enojado = false
	
	method fuerza(){
		return 2 * ira
	}
	
	method modificarIra(valor){
		ira = ira - valor
	}
	
	method hacerEnojar(){
		enojado = true
		cantidadVecesQueSeEnojo = cantidadVecesQueSeEnojo + 1
	}
	
	method puedeDerribarObstaculo(obstaculo){
		return self.fuerza() > obstaculo.resistencia()
	}
	
	method atacarObstaculo(obstaculo){
		if (self.puedeDerribarObstaculo(obstaculo)){
			islaCerdito.eliminarPrimerObstaculo()
		}
		else{}
	}
}

object red{
	
    var cantidadVecesQueSeEnojo = 0
	var property ira = 10
	var property enojado = false
	
	
	method fuerza(){
		return 10 * ira * cantidadVecesQueSeEnojo
	} 
	
	method modificarIra(valor){
		ira = ira - valor
	}
	
	method hacerEnojar(){
		enojado = true
		cantidadVecesQueSeEnojo = cantidadVecesQueSeEnojo + 1
	}
	
	method puedeDerribarObstaculo(obstaculo){
		return self.fuerza() > obstaculo.resistencia()
	}
	
	method atacarObstaculo(obstaculo){
		if (self.puedeDerribarObstaculo(obstaculo)){
			islaCerdito.eliminarPrimerObstaculo()
		}
		else{}
	}
	
}

object bomb{
	
	var cantidadVecesQueSeEnojo = 0
	var property ira = 10
	var property enojado = false
	const topeFuerza = 9000
	
	method fuerza(){
		return (ira * 2).min(topeFuerza)
	}
	
	method modificarIra(valor){
		ira = ira - valor
	}
	
	method hacerEnojar(){
		enojado = true
		cantidadVecesQueSeEnojo = cantidadVecesQueSeEnojo + 1
	}
	
	method puedeDerribarObstaculo(obstaculo){
		return self.fuerza() > obstaculo.resistencia()
	}
	
	method atacarObstaculo(obstaculo){
		if (self.puedeDerribarObstaculo(obstaculo)){
			islaCerdito.eliminarPrimerObstaculo()
		}
		else{}
	}
}

object chuck{
	
	var cantidadVecesQueSeEnojo = 0
	var property ira = 10
	var property enojado = false
	var velocidad = 20
	
	method velocidad(){
		if(enojado){
		velocidad = velocidad * 2
		}
		else{velocidad}
	}
	
	method fuerza(){
		self.velocidad()
		if(velocidad <= 80){
			return 150
		}
		else{
			return (velocidad - 80) * 5 + 150
		}
	}
	
	method modificarIra(valor){
	}
	
	method hacerEnojar(){
		enojado = true
		cantidadVecesQueSeEnojo = cantidadVecesQueSeEnojo + 1
	}
	
	method puedeDerribarObstaculo(obstaculo){
		return self.fuerza() > obstaculo.resistencia()
	}
	
	method atacarObstaculo(obstaculo){
		if (self.puedeDerribarObstaculo(obstaculo)){
			islaCerdito.eliminarPrimerObstaculo()
		}
		else{}
	}
}

object terence{
	
	var cantidadVecesQueSeEnojo = 0
	var property ira = 10
	var property enojado = false
	const multiplicador = 5
	
	method fuerza(){
		return multiplicador * ira * cantidadVecesQueSeEnojo
	}
	
	method modificarIra(valor){
		ira = ira - valor
	}
	
	method hacerEnojar(){
		enojado = true
		cantidadVecesQueSeEnojo = cantidadVecesQueSeEnojo + 1
	}
	
	method puedeDerribarObstaculo(obstaculo){
		return self.fuerza() > obstaculo.resistencia()
	}
	
	method atacarObstaculo(obstaculo){
		if (self.puedeDerribarObstaculo(obstaculo)){
			islaCerdito.eliminarPrimerObstaculo()
		}
		else{}
	}
}

object matilda{
	
	var cantidadVecesQueSeEnojo = 0
	var property ira = 10
	var property enojado = false
	var cantidadDeHuevos = 2
	
	method fuerza(){
		self.ponerHuevo()
		return ira * 2 + self.fuerzaDeTodosSusHuevos()
	}
	
	method fuerzaDeTodosSusHuevos(){
		return cantidadDeHuevos * 20
	}
	
	method ponerHuevo(){
		if(enojado){
			cantidadDeHuevos = cantidadDeHuevos + 1
		}
		else{cantidadDeHuevos}
	}
	
	method modificarIra(valor){
		ira = ira - valor
	}
	
	method hacerEnojar(){
		enojado = true
		cantidadVecesQueSeEnojo = cantidadVecesQueSeEnojo + 1
	}
	
	method puedeDerribarObstaculo(obstaculo){
		return self.fuerza() > obstaculo.resistencia()
	}
	
	method atacarObstaculo(obstaculo){
		if (self.puedeDerribarObstaculo(obstaculo)){
			islaCerdito.eliminarPrimerObstaculo()
		}
		else{}
	}
}

const luna = new PajaroComun(ira = 10, enojado = false, cantidadVecesQueSeEnojo = 1)