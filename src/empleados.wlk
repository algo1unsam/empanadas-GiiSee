object gimenez {

	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000
	var sueldo = 15000
	var sueldoTotal = 0

	method sueldo() {
		return 15000
	}

	method sueldo(nuevoValor) {
		sueldo = nuevoValor
	}

	method cobrarSueldo() {
		sueldoTotal += self.sueldo()
	}

	method totalCobrado() = sueldoTotal

}

object baigorria {

	var property sueldo = 15000
	var deuda = 0
	var dinero = 0
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15

	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}

	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada

	method dinero() = dinero

	method cobrarSueldo() {
		if (self.dinero() > deuda) {
			dinero -= deuda
		// deuda no debería quedar en 0?? ya que la pude pagar toda
		} else {
			// acá al revés, debería quedar en 0 el dinero, ya que lo usé todo para pagar la deuda
			deuda -= dinero
		}
	}

	method gastarSueldo(cantidad) {
		if (self.dinero() >= cantidad) {
			// si tengo el dinero para gastar (ya que dinero > a cantidad)
			// por qué no restar directamente de dinero? ¿por qué aumenta la deuda?
			// ahora, si lo que haces es sumar deuda, ¿entonces por que importa si tiene o no mas dinero que cantidad??
			deuda += (deuda - cantidad)
		} else {
			// acá hicieste lo que decía yo, creo que está al revés el if, puede ser?
			dinero -= cantidad
		}
	}

	method totalDeuda() = deuda

	method totalDinero() = dinero

}

object galvan {

	var dinero = 300000

	method dinero() {
		return dinero
	}

	method pagarA(empleado) {
		dinero -= empleado.sueldo()
		empleado.cobrarDinero()
	}

}

