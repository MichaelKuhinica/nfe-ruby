require 'entidades/nfe_entity'

#Representa o elemento cobr da nota fiscal
class Cobranca
  include NfeEntity

  attr_accessor :fatura #objeto Fatura

  attr_accessor :duplicatas #n objetos Duplicata

  def attributes
    @attributes = {
      :cobr => {
          :fat => fatura.to_nfe_format,
          :dup => duplicatas.to_nfe_format
      }
    }
  end

end