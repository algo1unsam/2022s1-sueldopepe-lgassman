
object pepe {
	
	var categoria = cadete
	
	method categoria(_categoria) {
		categoria = _categoria
	}
	
	method sueldo() {
		return self.sueldoNeto() 
		//+ self.valorPorPresentismo() 
		//+		self.valorPorResultado()
	}
	
	method sueldoNeto(){
		return categoria.neto() 
	}
}

object gerente {
	method neto() {return 15000 }	
}

object cadete {
	method neto() { return 20000}
}
//////////////////////////////






