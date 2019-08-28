object galvan {
	
	var dinero=0
	var sueldo = 15000
	
	method sueldo() { 
		return sueldo
	}
	method sueldo(nuevoValor) { 
		sueldo = nuevoValor
	}
	method cobrarSueldo() {
		dinero+=sueldo
	}
	method totalCobrado() {}
	
	method dineroCobrado() {
		return dinero
	}
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var sueldo=0
	var dinero=0
	var totalCobrado=0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() {
		sueldo=cantidadEmpanadasVendidas * montoPorEmpanada
		return sueldo
	}
	method totalCobrado() {
		totalCobrado+=sueldo
	}
	method cobrarSueldo() {
		dinero+=sueldo
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

