// plagas.wlk
import elementos.*


class Plagas {
    var poblacion

    method transmiteEnfermedades() = poblacion >= 10
    method consecuenciaPorAtacar() {
      poblacion = poblacion + (poblacion * 0.1)
    }
    method atacar(unElemento) {
      unElemento.efectoDelAtaque(self)
      self.consecuenciaPorAtacar()
    }
}

class Cucarachas inherits Plagas {
  const pesoPromedioBicho 

  method danio() = poblacion / 2
  override method transmiteEnfermedades() = super() and pesoPromedioBicho >= 10
  override method consecuenciaPorAtacar() {
    super() 
    pesoPromedioBicho + 2
  }
}

class Mosquitos inherits Plagas {
  method danio() = poblacion
  override method transmiteEnfermedades() = super() and poblacion % 3 == 0
}

class Pulgas inherits Plagas {
  method danio() = poblacion * 2
}

class Garrapatas inherits Plagas {
  method danio() = poblacion * 2
  override method consecuenciaPorAtacar() {
    poblacion = poblacion + (poblacion * 0.2)
  }
}

