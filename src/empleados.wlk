object galvan {
	var dinero=0
	var sueldo = 15000
	var deuda=0
	
	method sueldo() { 
		return sueldo
	}
	method sueldo(nuevoValor) { 
		sueldo = nuevoValor
	}
	method cobrarSueldo() {
		dinero+=sueldo
		self.totalDeuda()
	}
	method totalCobrado() {}
	
	method dineroCobrado() {
		return dinero
	}
	method gastar(monto) {
		if (dinero>=monto) {
			dinero=dinero-monto
		}
		else {
			deuda=deuda+(monto-dinero)
			dinero=0
		}
	}
		
	method totalDeuda() {
		if (deuda>=dinero) {
			deuda=deuda-dinero
			dinero=0
	}
		else {
			self.totalDinero()
			deuda=0
		}
	}
	method totalDinero() {
			dinero=dinero-deuda
	}
	method deuda() {
		return deuda
	}
}

object baigorria {
	var cantidadEmpanadasVendidas = 200
	var montoPorEmpanada = 20
	var dinero=0
	var totalCobrado=0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada

	method totalCobrado() {
		totalCobrado+=self.sueldo()
	}
	method cobrarSueldo() {
		dinero+=self.sueldo()
	}
	method dineroCobrado() {
		return dinero
	}
}

object gimenez {
	var dinero = 300000
	method dinero() { 
		return dinero
	}
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
		empleado.totalCobrado()
	}
}

