require "entidade_nfe"

module NFe

#Campo livre para observacoes do contribuinte
  class ObservacoesContribuinte < EntidadeNFe
    nfe_attr :xTexto
    nfe_attr :xCampo
  end

end