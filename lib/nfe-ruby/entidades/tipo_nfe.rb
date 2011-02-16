require 'nfe-ruby/entidades/nfe_entity'

#Tipo da NF-e processada
#Corresponde a uma definicao de um tipo de entidade complexa
class TipoNfe
  include NfeEntity

  nfe_attr :NFe
  nfe_attr :protNFe
  nfe_attr :versao

  def attributes
    @attributes = {
        'NFe' => nfe,
        'protNFe' => protNFe.to_nfe_format,
        'versao' => versao
    }
  end

end