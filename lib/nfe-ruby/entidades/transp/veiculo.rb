require 'entidade_nfe'

#TVeiculo
class Veiculo < EntidadeNFe
  nfe_attr :placa
  nfe_attr :UF
  nfe_attr :RTNC
end