import 'entidades/nfe_entity'

#representa elemento <transporta> do elemento <transp> da nfe
class TransportadoraSimples

  #ou cpf ou cnpj
  attr_accessor :cpf, :cnpj

  attr_accessor :xNome

  attr_accessor :ie

  attr_accessor :xEnder

  attr_accessor :xMun

  attr_accessor :UF

  def attributes
    @attributes = {
        'cpf'    => cpf,
        'cnpj'   => cnpj,
        'xNome'  => xNome,
        'IE'     => ie,
        'xEnder' => xEnder,
        'xMun'   => xMun,
        'UF'     => UF
    }
  end
end