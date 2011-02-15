require 'entidades/nfe_entity'

#Dados dos volumes, representa o elemento vol do elemento transp da nfe
class VolumesTransportados
  include NfeEntity

  #qtd de volumes transportados
  attr_accessor :qVol

  #Espécie dos volumes transportados
  attr_accessor :esp

  #Marca dos volumes transportados
  attr_accessor :marca

  #numeracao dos volumes trasnportados
  attr_accessor :nVol

  #Peso liquido em Kg
  attr_accessor :pesoL

  #peso bruto em Kg
  attr_accessor :pesoB

  #numero dos lacres
  attr_accessor :lacres

end