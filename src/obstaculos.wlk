class ParedVidrio {
	
	const anchoPared
	
	method resistencia(){
		return 10 * anchoPared
	}
}

class ParedMadera {
	
	const anchoPared
	
	method resistencia(){
		return 25 * anchoPared
	}
}


class ParedPiedra {
	
	const anchoPared
	
	method resistencia(){
		return 50 * anchoPared
	}
}


class CerditosObreros {
	
	method resistencia(){
		return 50
	}
}


class CerditosConCasco {
	
	const resistenciaCasco

	method resistencia(){
		return 10 * resistenciaCasco
	}
}


class CerditosConEscudo {
	
	const resistenciaEscudo

	method resistencia(){
		return 10 * resistenciaEscudo
	}
}

const paredMadera10 = new ParedMadera(anchoPared = 10)
const paredVidrio10 = new ParedVidrio(anchoPared = 10)
const cerditoConEscudo20 = new CerditosConEscudo(resistenciaEscudo = 20)