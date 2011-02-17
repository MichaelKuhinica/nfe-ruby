require '../entidade_nfe'

#Dados dos totais da NF-e, elemento total da NFe
class Total < EntidadeNFe

  nfe_attr :ICMSTot
  nfe_attr :ISSQNtot
  nfe_attr :retTrib

  def attributes
    {:total => super}
  end

end