require 'entidade_nfe'

#Representa o elemento cobr da nota fiscal
class Cobranca < EntidadeNFe

  nfe_attr :fatura #objeto Fatura

  nfe_attr :duplicatas #n objetos Duplicata

  def attributes
    @attributes = {
      :cobr => {
          :fat => fatura.to_nfe_format,
          :dup => duplicatas.to_nfe_format
      }
    }
  end

end