require 'entidades/nfe_entity'

#elemento fatura do elemento cobr da nfe
#Contém dados da fatura
class Fatura
  inport NfeEntity

  #Número da fatura (1 a 60 caracteres)
  attr_accessor :nFat

  #Valor original da fatura
  attr_accessor :vOrig

  #Valor do desconto da fatura
  attr_accessor :vDesc

  #Valor liquido da fatura
  attr_accessor :vLiq

  def attributes
    @attributes = {
        'nFat'  => nFat,
        'vOrig' => vOrig,
        'vDesc' => vDesc,
        'vLiq'  => vLiq
    }
  end

end