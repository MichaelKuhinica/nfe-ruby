require 'entidade_nfe'

#Tipo da NF-e processada
#TNfeProc declarado no layout_nfe 2.0
class TipoNfe < EntidadeNFe

  nfe_attr :NFe
  nfe_attr :protNFe
  nfe_attr :versao

end
