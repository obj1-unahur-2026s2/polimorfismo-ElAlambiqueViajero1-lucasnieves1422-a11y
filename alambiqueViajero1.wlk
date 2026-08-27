object luke {
  var vehiculo = alambiqueVeloz
  var cantidadDeViajes = 0
  var ultimoRecuerdoDeViaje = 0
  method vehiculo() = vehiculo
  method cambiarVehiculo(unVehiculo) {
    vehiculo = unVehiculo
  } 
  method ultimoRecuerdoDeViaje(lugar){
    ultimoRecuerdoDeViaje =  lugar.recuerdo()
  }
  
  method RealizarViaje(lugar) {
    if(lugar.restricciones(vehiculo)){
      vehiculo.viajar()
      self.ultimoRecuerdoDeViaje(lugar)
      cantidadDeViajes = cantidadDeViajes + 1
    }

  }
}
/*
|                                             |
|                   Ciudades                  |
|                                             |
*/
object paris{
  method recuerdo() = "torre eiffel"
  method restricciones(unVehiculo) = unVehiculo.combustible() > 10
}

object buenosAires {
  var recuerdo = "mate con yerba"
  method recuerdo() = recuerdo
  method puebloEligePresidenteBueno(){
    recuerdo = "mate con yerba"
  }
  method puebloEligePresidenteMalo(){
    recuerdo = "mate sin yerba"
  }
  method restricciones(unVehiculo) = unVehiculo.esRapido()
}
  
object bagdad {
  var recuerdo = "bidón con petróleo crudo"
  method cambiarRecuerdo(nuevoRecuerdo) {
    recuerdo = nuevoRecuerdo
  } 
  method restricciones(unVehiculo){}
}

object lasVegas {
  var recuerdo = "bidon con petroleo crudo" //poner un valor real
  method lugarHomenajeado() = paris
  method recuerdo() = self.lugarHomenajeado().recuerdo()
  method cambiarCiudadHomenajeada(ciudad){
    recuerdo = ciudad.recuerdo()
  }
  method restricciones(unVehiculo) = self.lugarHomenajeado().restricciones(unVehiculo)
}

object laBoca {
  method recuerdo() = "mini copa libertadores"
  method restricciones(unVehiculo) {}

}
/*
|                                             |
|                   Vehiculos                 |
|                                             |
*/

object alambiqueVeloz {
  var combustible = 50
  method combustible() = combustible
  method esRapido() = true
  method viajar() {
    combustible = combustible - 10
  }
  method recargar(){
    combustible = 50
  } 
}
object superChatarra{
  var tieneCaniones = false
  var combustible = 0
  method tieneCaniones() = tieneCaniones 
  method viajar() { 
    tieneCaniones = !tieneCaniones
  }
  method combustible() =
    if(self.tieneCaniones()){
      combustible = 50
    } else {
      combustible = 80
    }
  method esRapido() = true  
}

object antiguallaBlindada{
  var cantidadDeGangsters = 5
  method cantidadDeGangsters() = cantidadDeGangsters
  method cambiarCantidadDeGangsters(unaCant) =
    if(unaCant > 1){
      cantidadDeGangsters = unaCant
    }
  method esRapido() = cantidadDeGangsters < 7
  method combustible() = 50
  method viajar() {}
}

object el303 {
  var cantidadDePasajeros = 0
  var combustible = 100
  method cantidadDePasajeros()  = cantidadDePasajeros
  method subirPasajeros(pasajeros) {
    cantidadDePasajeros = cantidadDePasajeros + pasajeros
  }
  method esRapido() = cantidadDePasajeros <= 30
  method combustible() = combustible
  method viajar() {
    combustible = combustible - (cantidadDePasajeros / 2)
  }
}
object ferrari {
  var combustible = 40
  method combustible() = combustible 
  method viajar(){
    combustible = combustible / 2
  }
  method esRapido() = true 

}















/*
                    Objetos
alambiqueVeloz
antiguallaBlindada
bagdad
buenosAires
lasVegas
luke
paris
superChatarraEspecial

                    Métodos
cambiarCantidadDeGangsters
cambiarCiudadHomenajeada
cambiarDeVehiculo
cambiarRecuerdo
cantidadDeLugaresVisitados
puebloEligePresidenteBueno
puebloEligePresidenteMalo
recuerdo
viajar
*/













































