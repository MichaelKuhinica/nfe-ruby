require 'entidades/nfe_entity'

#elemento transp da nfe
class Transporte
  include NfeEntity

  attr_accessor :modFrete

  attr_accessor :transportadora_simples

  attr_accessor :retTransp

  #ou veicTransp e reboque
  attr_accessor :veicTransp, :reboque

  #ou vagao
  attr_accessor :vagao

  #ou balsa
  attr_accessor :balsa

  def attributes
    @attributes = {
        'modFrete'   => modFrete,
        'transporta' => transportadora_simples.to_nfe_format,
        'retTransp'  => retTransp.to_nfe_format,
        'veicTransp' => veicTransp,
        'reboque'    => reboque,
        'vagao'      => vagao,
        'balsa'      => balsa
    }
  end

  def modfrete=(valor)
    if MODALIDADES_FRETE.include? valor
      modfrete = valor
    else
      raise "Modalidade não existente"
    end
  end
end