require '../entidade_nfe'

class DadosNFe1A < EntidadeNFe

  #TCodUfIBGE
  nfe_attr :cUF

  nfe_attr :AAMM

  nfe_attr :CNPJ

  nfe_attr :mod

  #TSerie
  nfe_attr :serie

  #TNF
  nfe_attr :nNF

  def serie
    "01"
  end

end