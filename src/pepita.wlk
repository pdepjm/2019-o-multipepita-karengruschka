object pepita {
	var energia = 100

	method estaCansada() {
		return energia < 50
	}

	method estaFeliz() {
		return energia.between(500, 1000)
	}
	
	method cuantoQuiereVolar() {
		var kilometros = energia/5;
		
		if(energia.between(300, 400))
			kilometros+=10
			
		if(energia%20==0)
			kilometros+=15
			
		return kilometros
	}
	
	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method salirAComer() {
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	
	method haceLoQueQuieras() {
		if(self.estaCansada())
			self.come(alpiste)
		
		if(self.estaFeliz())
			self.vola(8)
	}	
}

object roque{
	method entrenar() {
		pepita.vola(10)
		pepita.come(alpiste)
		pepita.vola(5)
		pepita.haceLoQueQuieras()
	}	
}


object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object mijo {
	var mojado = false
	
	method mojarse() {
		 mojado = true
	}
	
	method secarse() {
		mojado = false
	}
	
	method energiaQueOtorga() = if (mojado) 15 else 20
}

object canelones {
	var energia = 20
	var tieneSalsa = false
	var tieneQueso = false
	
	method ponerSalsa() {
		if(!tieneSalsa)
			energia += 5
		tieneSalsa = true;
	}
	
	method sacarSalsa() {
		if(tieneSalsa)
			energia -= 5
		tieneSalsa = false;
	}
	
	method ponerQueso() {
		if(!tieneQueso)
			energia += 7
		tieneQueso = true;
	}
	
	method sacarQueso() {
		if(tieneQueso)
			energia -= 7
		tieneQueso = false;
	}
	
	method energiaQueOtorga() { 
		return energia
	}
}