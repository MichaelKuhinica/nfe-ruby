require 'nfe-ruby/entidades/nfe_entity'

#Tipo da NF-e processada
#Corresponde a uma definicao de um tipo de entidade complexa
class TipoNfe
  include NfeEntity

  nfe_attr :nfe
  nfe_attr :protNFe
  nfe_attr :versao

  def attributes
    @attributes = {
        'NFe' => nfe,
        'protNFe' => protNFe,
        'versao' => versao
    }
  end

end