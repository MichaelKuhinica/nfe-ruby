
#Tipo Protocolo de status resultado do processamento da NF-e
class ProtocoloNfe < ProtocoloStatus

  #dados do protocolo de status
  nfe_attr :infProt #aparece cabecalho

  #versao
  nfe_attr :versao

end