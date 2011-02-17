# -*- coding: utf-8 -*-
#TODO : onde fica o cliente na nfe?
require 'nfe-ruby/config/params'

class Cliente < EntidadeNFe

  # - Nome/Razão Social (obrigatorio)
  nfe_attr :razao_social

  # - Tipo de Documento (obrigatorio) - default CNPJ - TIPOS_DOCUMENTO
  nfe_attr :tipo_documento

  # - Numero do Documento (obrigatorio)
  nfe_attr :numero_documento

  # - Inscricao Estadual
  nfe_attr :inscricao_estadual

  # - Inscricao SUFRAMA
  nfe_attr :inscricao_suframa

  # - Isento do ICMS (Sim/Nao)
  nfe_attr :isento_icms

  # Endereco
  # - Logradouro (obrigatorio)
  nfe_attr :endereco_logradouro

  # - Numero (obrigatorio)
  nfe_attr :endereco_numero

  # - Complemento
  nfe_attr :endereco_complemento

  # - Bairro (obrigatorio)
  nfe_attr :endereco_bairro

  # - CEP
  nfe_attr :endereco_cep

  # - Pais (seleciona de lista)
  nfe_attr :endereco_pais

  # - UF (obrigatorio)
  nfe_attr :endereco_uf

  # - Municipio (obrigatorio)
  nfe_attr :endereco_municipio

  # - Telefone
  nfe_attr :endereco_telefone

  def initialize
    @isento_icms   = false
    @endereco_pais = Nfe::CODIGO_BRASIL
    @tipo_documento= 'CNPJ'
  end

  def to_s
    "#{@tipo_documento} #{@numero_documento}"
  end

end
