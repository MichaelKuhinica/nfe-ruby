require 'nfe/entidades/entidade_nfe'

module NFe

#elemento PIS do elemento imposto do elemento det da NFe
#Dados do PIS
  class PIS < EntidadeNFe

    nfe_attr :PISAliq #tem classe

    nfe_attr :PISQtde #tem classe

    nfe_attr :PISNT #tem classe

    nfe_attr :PISOutr #tem classe

  end

end