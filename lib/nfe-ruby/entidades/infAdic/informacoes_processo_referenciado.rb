require 'entidade_nfe'
require 'config/params'

#Grupo de informações do processo referenciado
class InformacoesProcessoReferenciado < EntidadeNFe
  #Indentificador do processo ou ato concessório
  nfe_attr :nProc

  #Origem do processo, Nfe::ORIGEM_DO_PROCESSO
  nfe_attr :indProc

  def infProc=(value)
    if Nfe::ORIGEM_DO_PROCESSO.include? value
      @infProc = value
    else
      raise 'Origem do processo inválida'
    end
  end
end