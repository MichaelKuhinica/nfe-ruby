require 'nfe-ruby/entidades/entidade_nfe'

class PISOutr < EntidadeNFe

  nfe_attr :CST
# choice
#  seq
  nfe_attr :vBC
  nfe_attr :pPIS
#  seq
  nfe_attr :qBCProd
  nfe_attr :vAliqProd
# end choice
  nfe_attr :vPIS


end