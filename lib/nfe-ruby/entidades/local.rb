require 'nfe-ruby/entidades/entidade_nfe'

#Representa o tipo TLocal
#Tipo Dados do Local de Retirada ou Entrega // 24/10/08 - tamanho mínimo // v2.0
class Local < EntidadeNFe

  #cnpj ou cpf
  nfe_attr :cnpj

  #cpf ou cnpj
  nfe_attr :cpf

  #logradouro
  nfe_attr :xlgr

  #numero
  nfe_attr :nro

  #complemento
  nfe_attr :xcpl

  #bairro
  nfe_attr :xbairro

  #codigo municipio tabela IBGE
  nfe_attr :cmun

  #nome municipio
  nfe_attr :xmun

  #UF
  nfe_attr :uf

  def attributes
    @attributes = {
        'CNPJ'    => cnpj,
        'CPF'     => cpf,
        'xlgr'    => xlgr,
        'nro'     => nro,
        'xCpl'    => xcpl,
        'xBairro' => xbairro,
        'cMun'    => cmun,
        'xmun'    => xmun,
        'uf'      => uf
    }
  end

end