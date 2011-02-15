require 'entidades/nfe_entity'

#elemento <retTransp> do elemento <transp> da nfe
class RetencaoIcmsTransporte
  include NfeEntity

  #valor do Serviço
  attr_accessor :vServ

  #BC da Retenção do ICMS
  attr_accessor :vBCRet

  #Alíquota da Retenção
  attr_accessor :pICMSRet

  #Valor do ICMS Retido
  attr_accessor :vICMSRet

  #Código Fiscal de Operações e Prestações // PL_006f - alterado para
  #permitir somente CFOP de transportes
  attr_accessor :cfop

  #Código do Município de Ocorrência do Fato Gerador (utilizar a tabela do IBGE)
  attr_accessor :cMunFG

  def attributes
    @attributes = {
        'vServ'    => vServ.to_s,
        'vBCRet'   => vBCRet.to_s,
        'pICMSRet' => pICMSRet.to_s,
        'vICMSRet' => vICMSRet.to_s,
        'CFOP'     => cfop,
        'cMunFG'   => cMunFG
    }
  end
end