require 'entidades/nfe_entity'

#Representa o tipo TLocal
#Tipo Dados do Local de Retirada ou Entrega // 24/10/08 - tamanho mínimo // v2.0
class Local
  include NfeEntity

  #cnpj ou cpf
  attr_accessor :cnpj

  #cpf ou cnpj
  attr_accessor :cpf

  #logradouro
  attr_accessor :xlgr

  #numero
  attr_accessor :nro

  #complemento
  attr_accessor :xcpl

  #bairro
  attr_accessor :xbairro

  #codigo municipio tabela IBGE
  attr_accessor :cmun

  #nome municipio
  attr_accessor :xmun

  #UF
  attr_accessor :uf

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