require 'nfe/entidades/entidade_nfe'

module NFe

  #Tipo da NF-e processada
  #TNfeProc declarado no layout_nfe 2.0
  class TipoNfe < EntidadeNFe

    nfe_attr :NFe
    nfe_attr :protNFe
    nfe_attr :versao

  end
  
end
