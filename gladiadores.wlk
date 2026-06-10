import coliseo.*

class Gladiadores {
    var vida = 100
    var fuerza
    var defenza
    var destresa 
    


   method vida()= vida
   method fuerza()= fuerza
   method defenza() = defenza
   method destresa()=destresa

   
   method dañorecibido(unDaño){
    vida = vida - unDaño
   }

   method atacarA(unGladiador){
    unGladiador.dañorecibido(self.fuerza())
    unGladiador.atacarA(self)

   }
  method cura(){
    vida = 100
  }

}

class Mirmillone inherits Gladiadores {
  var armaActual
override method initialize() {
    destresa = 15
  }
  
method armaActual () = armaActual 

 method cambiarArma(unArma){
    armaActual= unArma
  }
  

method colocarseCasco(){
   defenza = casco.aumentarDefenzaA(self)
}  

method agarrarEscudo(){
   destresa = escudo.aumentarDestresaDe(self)
}

method poderDeAtaque(){
    return armaActual.valorDeAtaque() + self.fuerza()
  }
override method atacarA(unGladiador){
   unGladiador.dañorecibido(self.poderDeAtaque()-unGladiador.defenza())
   unGladiador.atacarA(self)
}

method formarGrupoCon(unGladiador){
  return new Grupos(grupos = #{unGladiador,self}, nombre = "mimillolandia")
}

}
class Dimachaerus inherits Gladiadores {
  const armas = []

  
  override method initialize() {
    fuerza = 10
    
  }

  method armas()=armas
  method agarrar(unArma){
    armas.add(unArma)
  }

  method soltar(unArma){
    armas.remove(unArma)
  } 

 method poderDeAtaque(){
    return armas.sum({a=> a.valorDeAtaque()}) + self.fuerza()
  }
 override method atacarA(unGladiador){
   unGladiador.dañorecibido(self.poderDeAtaque()-unGladiador.defenza())
   unGladiador.atacarA(self)
  }
  

  method formarGrupoCon(unGladiador){
   
  return new Grupos(grupos = #{unGladiador,self}, nombre = "E" + (self.poderDeAtaque()+ unGladiador.poderDeAtaque()).toString())
}
}



