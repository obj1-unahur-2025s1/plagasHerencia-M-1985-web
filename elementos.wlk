// elementos.wlk
class Barrio {
  const elementos = []

  method agregarElemento(unElemento) {
    return elementos.add(unElemento)
  }
}

class Hogar {
  var property mugreNivel = 0
  const confort = 0

  method esBueno() = mugreNivel <= (confort * 0.5)
}

object nivelASuperar {
  var property valor = 100
}

class Huerta {
  const capDeProd = 0

  method esBueno() = capDeProd > self.valorMinimo()
  method valorMinimo() = nivelASuperar.valor()
}

class Mascota {
  var property nivelSalud = 100

  method esBueno() = nivelSalud > 250
}

class Plaga {

}

class Cucaracha {
  
}

class Pulga {
  
}

class Garrapata {
  
}

class Mosquito {
  
}