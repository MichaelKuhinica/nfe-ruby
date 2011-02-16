#coding: utf-8
require 'nfe-ruby/config/params'

class EnderecoEmitente
  include NfeEntity

#  validates_length_of :xLgr, :nro, :xCpl, :xBairro, :xMun, :in => 2...60
#  validates :CEP, :format => {:with => /[0-9]{8}/} #sem traços, somente numeros
#  validates :fone, :format => {:with => /[0-9]{6,14}/} #DDD + número do telefone

  nfe_attr :xlgr
  nfe_attr :nro
  nfe_attr :xcpl
  nfe_attr :xbairro
  nfe_attr :cmun
  nfe_attr :xmun
  nfe_attr :uf
  nfe_attr :cep
  nfe_attr :cpais
  nfe_attr :xpais
  nfe_attr :fone

  def cpais
    Nfe::CODIGO_BRASIL
  end

  def xpais
    'BRASIL'
  end

  #Testar se tem como controlar o que será atributo e o que será valor
  #,esta gerando uma saida invalida
  def attributes
    @attributes = {
        'xLgr'    => xlgr,
        'nro'     => nro,
        'xCpl'    => xcpl,
        'xBairro' => xbairro,
        'cMun'    => cmun,
        'xMun'    => xmun,
        'UF'      => uf,
        'CEP'     => cep,
        'cPais'   => cpais,
        'xPais'   => xpais,
        'fone'    => fone
    }
  end

end
