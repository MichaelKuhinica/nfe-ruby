require '../entidade_nfe'

class LocalRetirada < EntidadeNFe
  nfe_attr :local

  def attributes
    {
        :retirada => local.to_nfe_format
    }
  end
end