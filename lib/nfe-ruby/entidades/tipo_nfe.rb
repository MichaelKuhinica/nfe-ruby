require 'entidade_nfe'

#Tipo da NF-e processada
#Corresponde a uma definicao de um tipo de entidade complexa
class TipoNfe < EntidadeNFe

  nfe_attr :NFe
  nfe_attr :protNFe
  nfe_attr :versao

end