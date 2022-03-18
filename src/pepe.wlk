
object pepe {
	
	var categoria = cadete
	var bonoPorResultado =  fijo
	var bonoPorPresentismo = normal
	var faltas = 0
	
	method faltas() {
		return faltas
	}
	
	method faltas(_faltas) {
		faltas = _faltas
	}
	
	method bonoPorPresentismo(_bonoPorPresentismo){
		bonoPorPresentismo=_bonoPorPresentismo
	}
	
	method categoria(_categoria) {
		categoria = _categoria
	}
	
	method bonoPorResultado(_bonoPorResultado) {
		bonoPorResultado = _bonoPorResultado
	}
	
	method sueldo() {
		return self.sueldoNeto() 
				+ self.valorPorResultado()
				+ self.valorPorPresentismo() 
	}
	
	method sueldoNeto(){
		return categoria.neto() 
	}
	
	method valorPorResultado() {
		return bonoPorResultado.valor(self)
	}
	
	method valorPorPresentismo() {
		return bonoPorPresentismo.monto(self)
	}
}

object normal {
	method monto(empleado) {
		if (empleado.faltas() == 0) {
			return 2000
		}
		else if(empleado.faltas() == 1) {
			return 1000
		}
		else {
			return 0
		}
	}
}
object demagogico {
	method monto(empleado) {
		if (empleado.sueldoNeto() < 18000) {
			return 500
		}
		else {
			return 300
		}
	}
	
}

object ajuste {
	method monto(empleado) {
		if (empleado.faltas() > 0) {
			return 0
		}
		else {
			return 100
		}
	}
	
}

object bonoPresentismoNulo {
	method monto(empleado) {
		return 0
	}	
}
////////////////////////////
object fijo {
	method valor(empleado) {
		return 800		
	}
}

object porcentual{
	method valor(empleado) {
		return empleado.sueldoNeto() * 0.10		
	}
}

object bonoResultadoNulo {
	method valor(empleado) {
		return 0	
	}	
}
//////////////////////////////
object gerente {
	method neto() {return 15000 }	
}

object cadete {
	method neto() { return 20000}
}






