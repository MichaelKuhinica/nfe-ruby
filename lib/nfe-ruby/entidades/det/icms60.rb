require "../entidade_nfe"

class ICMS60 < EntidadeNFe

  nfe_attr :orig

  #Tributação pelo ICMS 60 - ICMS cobrado anteriormente por substituição tributária
  nfe_attr :CST

  nfe_attr :vBCSTRet

  nfe_attr :vICMSSTRet

  def attributes
    {:ICMS60 => super}
  end

end