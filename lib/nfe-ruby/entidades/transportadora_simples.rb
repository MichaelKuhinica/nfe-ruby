import 'entidades/nfe_entity'

#representa elemento <transporta> do elemento <transp> da nfe
class TransportadoraSimples < EntidadeNFe

  #ou cpf ou cnpj
  nfe_attr :cpf, :cnpj

  nfe_attr :xNome

  nfe_attr :IE

  nfe_attr :xEnder

  nfe_attr :xMun

  nfe_attr :UF

end