object olivia{
	var concentracion = 6
	
	method gradoDeConcentracion(){
		return concentracion
	}
	method recibirMasaje(){
		concentracion = concentracion + 3
	}
	method discutir(){
		concentracion = concentracion - 1
	}
	method tomarBanioDeVapor(){
		
	}
}

object bruno{
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method recibirMasaje(){
		esFeliz = true
	}
	method tomarBanioDeVapor(){
		peso = 0.max(peso - 500)
		tieneSed = true
	}
	method tomarAgua(){
		tieneSed = false
	}
	method comerFideos(){
		peso = peso + 250
		tieneSed = true
	}
	method correr(){
		peso = peso - 300
	}
	method verNoticiero(){
		esFeliz = false
	}
	method estaPerfecto(){
		return esFeliz and !tieneSed and peso.between(50000, 70000)
	}
	method medioDiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro{
	var contractura = 0
	var tieneLaPielGrasosa = false
	
	method recibirMasaje(){
		contractura = 0.max(contractura - 2)
	}
	method tomarBanioDeVapor(){
		tieneLaPielGrasosa = false
	}
	method comerBigMac(){
		tieneLaPielGrasosa = true
	}
	method bajarALaFosa(){
		tieneLaPielGrasosa = true
		contractura = contractura + 1
	}
	method jugarAlPaddle(){
		contractura = contractura + 3
	}
	method diaDeTrabajo(){
		self.bajarALaFosa()
		self.comerBigMac()
		self.bajarALaFosa()
	}
	method estaContracturado(){
		return if(contractura == 0) "No esta contracturado" else "Tiene una contractura de nivel " + contractura
	}
	method tieneLaPielGrasosa(){
		return tieneLaPielGrasosa
	}
}

