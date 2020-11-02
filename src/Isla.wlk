import Pajaro.*
import obstaculos.*

object islaPajaro{
	
	const pajaros = #{matilda, chuck, bomb}
	var pajarosFuertes
	
	method pajarosFuertes(){
		return pajaros.filter{pajaro => pajaro.fuerza() > 50}
	}
	
	method fuerzaIsla(){
		pajarosFuertes = self.pajarosFuertes()
		return pajarosFuertes.sum{pajaro => pajaro.fuerza()}
	}
	
	method manejoIra(){
		eventoManejoIra.realizarEvento(pajaros)
	}
	
	method invasionCerditos(){
		eventoInvasionCerditos.realizarEvento(pajaros)
		
	}
	
	method fiestaSorpresa(){
		eventoFiestaSorpresa.realizarEvento(pajaros)
		
	}
	
	method serieDeEventosDesafortunados(){
		serieDeEventosDesafortunados.realizarEvento()
	}
	
	method atacar(islaCerdito){
		pajaros.forEach{pajaro => pajaro.atacarObstaculo(islaCerdito.primerObstaculo())}
	}
	
	method seRecuperaronLosHuevos(){
		return islaCerdito.sinObstaculos()
	}
	
	
}

object eventoManejoIra{
	
	method realizarEvento(pajaros){
		pajaros.forEach{pajaro => pajaro.modificarIra(5)}
	}
}

object eventoInvasionCerditos{
	
	const cantidad = 100

	method realizarEvento(pajaros){
	(cantidad / 100).times(pajaros.forEach{pajaro => pajaro.hacerEnojar()})
	
	}

}

object eventoFiestaSorpresa{
	
	const homenajeados = #{}
	
	method realizarEvento(pajaros){
	homenajeados.forEach{pajaro => pajaro.hacerEnojar()}
	
	}
}

object serieDeEventosDesafortunados{
	
	const eventos = #{}
	
	method realizarEvento(){
		eventos.forEach{evento => evento.realizarEvento()}
	}
	
}

object islaCerdito{
	
	const obstaculos = [paredVidrio10, paredMadera10, cerditoConEscudo20]
	
	method eliminarPrimerObstaculo(){
		obstaculos.remove(obstaculos.first())
	
	}
	
	method primerObstaculo(){
		return obstaculos.first()
	}
	
	method sinObstaculos(){
		return obstaculos.isEmpty()
	}
}





