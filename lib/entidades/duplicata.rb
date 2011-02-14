require "entidades/nfe_entity"

#Refere ao elemento dup do elemento cobr da nfe
#Contem dados das duplicatas
class Duplicata

  #Numero da duplicata
  attr_accessor :nDup

  #Data de vencimento da duplicata
  attr_accessor :dVenc

  #Valor da duplicata
  attr_accessor :vDup

  def attributes
    @attributes = {
        'nDup'  => nDup,
        'dVenc' => dVenc,
        'vDup'  => vDup
    }
  end
  
end
