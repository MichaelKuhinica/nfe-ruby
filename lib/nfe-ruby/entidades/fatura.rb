require 'entidade_nfe'

#elemento fatura do elemento cobr da nfe
#Contém dados da fatura
class Fatura
  inport EntidadeNFe

  #Número da fatura (1 a 60 caracteres)
  nfe_attr :nFat

  #Valor original da fatura
  nfe_attr :vOrig

  #Valor do desconto da fatura
  nfe_attr :vDesc

  #Valor liquido da fatura
  nfe_attr :vLiq

  def attributes
    @attributes = {
        'nFat'  => nFat,
        'vOrig' => vOrig,
        'vDesc' => vDesc,
        'vLiq'  => vLiq
    }
  end

end