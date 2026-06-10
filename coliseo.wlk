import gladiadores.*
class ArmaDeFilo{
  var filo
  var longitud
  var tipoDeArma

  method tipoDeArma()= tipoDeArma
  method filo() = filo
  method longitd () = longitud

  method valorDeAtaque(){
     return filo * longitud
  }
  method afiliar(unValor){
    if(unValor.between(0, 1)){
      filo = unValor
    }
  }
  method nuevaLogitud(unaLogitud){
      longitud = unaLogitud
  }


}

class ArmaContudentes {
  var tipoDeArma
  var peso
  method peso()= peso

  method tipo()=tipoDeArma
  method pesar(unPeso){
    peso = unPeso
  }
  method valorDeAtaque(){
    return peso
  }


}

object casco {
  const defenza = 10

  method aumentarDefenzaA(unGladiador){
     return unGladiador.defenza() + defenza
  }
  
  
}

object escudo{
  method aumentarDestresaDe(unGladiador){
    return  5 + (unGladiador.destresa()* 0.10) + unGladiador.destresa()

  }
}

class Grupos {
  const grupos = #{}
  var nombre
  var cantidadPeleas = 0 

  method cantidadPeleas()=cantidadPeleas
  method nombre()=nombre

  method agregarA(unGladiador){
    grupos.add(unGladiador)
  }
  method sacarA(unGladiador){
    grupos.remove(unGladiador)
  }

  method campeon(){
     var campeon = grupos.max({g=>g.poderDeAtaque()})
     if(campeon.vida() > 0){
         return  campeon
      } else {return grupos.sacarA(campeon)}
    
  }

  method combates(groupoUno, grupoDos){
    groupoUno.campeon().atacarA(grupoDos.campeon())
    groupoUno.campeon().atacarA(grupoDos.campeon())
    groupoUno.campeon().atacarA(grupoDos.campeon())
    cantidadPeleas =+ 1
  }

}