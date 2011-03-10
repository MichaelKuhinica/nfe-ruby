require 'nfe-ruby/entidades/entidade_nfe'

class LocalEntrega < EntidadeNFe

  nfe_attr :local

  def attributes
    {
        :entrega => local.to_nfe_format
    }
  end

end