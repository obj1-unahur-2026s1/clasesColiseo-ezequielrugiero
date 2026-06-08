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

  method cambiarDeArma(unArma){
    tipoDeArma=unArma
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
  method cambiarDeArma(unArma){
    tipoDeArma=unArma
  }

}

object casco {
  const defesa = 10

  method defesa()= defesa
  
  method aumentarDefesaDe(unGladidor){
    return unGladidor.defesa()= unGladidor.defesa() + 10

  }
}

object escudo{
  method aumentarDestresaDe(unGladidor){
    return unGladidor.destresa()= 5 + (unGladidor.destresa()* 0.10)

  }
}