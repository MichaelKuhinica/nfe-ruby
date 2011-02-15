# -*- coding: utf-8 -*-
require 'entidades/nfe_entity'

module NFe
class Avulsa
  include NfeEntity

  #CNPJ do Órgão emissor
  attr_accessor :cnpj

  #Órgão emitente
  attr_accessor :xorgao

  #Matrícula do agente
  attr_accessor :matr

  #Nome do agente
  attr_accessor :xagente

  #Telefone
  attr_accessor :fone

  #UF
  attr_accessor :uf

  #Número do Documento de Arrecadação de Receita
  attr_accessor :ndar

  #Data de emissão do DAR (AAAA-MM-DD)
  attr_accessor :demi

  #Valor Total constante no DAR
  attr_accessor :vdar

  #Repartição Fiscal emitente
  attr_accessor :repemi

  #Data de pagamento do DAR (AAAA-MM-DD)
  attr_accessor :dpag

  def attributes
    @attributes = {
        'avulsa' => {
            'CNPJ'    => cnpj,
            'xOrgao'  => xorgao,
            'matr'    => matr,
            'xAgente' => xagente,
            'fone'    => fone,
            'UF'      => uf,
            'nDAR'    => ndar,
            'dEmi'    => demi,
            'vDAR'    => vdar,
            'repEmi'  => repemi,
            'dPag'    => dpag
        }
    }
  end

end
end
