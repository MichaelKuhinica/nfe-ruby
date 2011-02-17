#coding: utf-8

class NotaFiscal
  include EntidadeNFe
  nfe_attr :status

  # Código numérico aleatório que compõe a chave de acesso
  nfe_attr :codigo_numerico_aleatorio

  # Digito verificador do codigo numerico aleatorio
  nfe_attr :dv_codigo_numerico_aleatorio

  # Nota Fisca eletronica
  # - Modelo (formato: NN)
  nfe_attr :modelo

  # - Serie (obrigatorio - formato: NNN)
  nfe_attr :serie

  # - Numero NF (obrigatorio)
  nfe_attr :numero_nf

  # - Data da Emissao (obrigatorio)
  nfe_attr :data_emissao

  # - Natureza da Operacao (obrigatorio)
  nfe_attr :natureza_operacao

  # - Tipo do Documento (obrigatorio - seleciona de lista) - NF_TIPOS_DOCUMENTO
  nfe_attr :tipo_documento

  # - Processo de emissão da NF-e (obrigatorio - seleciona de lista) - NF_PROCESSOS_EMISSAO
  nfe_attr :processo_emissao

  # - Versao do processo de emissão da NF-e
  nfe_attr :versao_processo_emissao

  # - Tipo impressao DANFE (obrigatorio - seleciona de lista) - NF_TIPOS_IMPRESSAO_DANFE
  nfe_attr :tipo_impressao_danfe

  # - Data de saida/entrada
  nfe_attr :data_saida_entrada

  # - Forma de pagamento (obrigatorio - seleciona de lista) - NF_FORMAS_PAGAMENTO
  nfe_attr :forma_pagamento

  # - Forma de emissao (obrigatorio - seleciona de lista) - NF_FORMAS_EMISSAO
  nfe_attr :forma_emissao

  # - Finalidade de emissao (obrigatorio - seleciona de lista) - NF_FINALIDADES_EMISSAO
  nfe_attr :finalidade_emissao

  # - UF - converter para codigos em CODIGOS_ESTADOS
  nfe_attr :uf

  # - Municipio de ocorrencia
  nfe_attr :municipio

  # - Digest value da NF-e (somente leitura)
  attr_reader :digest_value

  # - Valor total da nota (somente leitura)
  attr_reader :valor_total_nota

  # - Valor ICMS da nota (somente leitura)
  attr_reader :valor_icms_nota

  # - Valor ICMS ST da nota (somente leitura)
  attr_reader :valor_icms_st_nota

  # - Protocolo (somente leitura)
  attr_reader :protocolo

  # - Data (somente leitura)
  attr_reader :data

  # - Notas Fiscais Referenciadas (lista 1 para * / ManyToManyField)
  nfe_attr :notas_fiscais_referenciadas

  # - Emitente (CNPJ ???)
  nfe_attr :emitente

  # - Destinatario/Remetente
  # - Identificacao (seleciona de Clientes)
  nfe_attr :destinatario_remetente

  # - Entrega (XXX sera possivel ter entrega e retirada ao mesmo tempo na NF?)
  nfe_attr :entrega

  # - Retirada
  nfe_attr :retirada

  # - Local Retirada/Entrega
  # - Local de retirada diferente do emitente (Sim/Nao)
  nfe_attr :local_retirada_diferente_emitente

  # - Local de entrega diferente do destinatario (Sim/Nao)
  nfe_attr :local_entrega_diferente_destinatario

  # - Produtos e Servicos (lista 1 para * / ManyToManyField)
  nfe_attr :produtos_e_servicos

  # Totais
  # - ICMS
  # - Base de calculo (somente leitura)
  nfe_attr :totais_icms_base_calculo

  # - Total do ICMS (somente leitura)
  attr_reader :totais_icms_total

  # - Base de calculo do ICMS ST (somente leitura)
  attr_reader :totais_icms_st_base_calculo

  # - Total do ICMS ST (somente leitura)
  attr_reader :totais_icms_st_total

  # - Total dos produtos e servicos (somente leitura)
  attr_reader :totais_icms_total_produtos_e_servicos

  # - Total do frete (somente leitura)
  attr_reader :totais_icms_total_frete

  # - Total do seguro (somente leitura)
  attr_reader :totais_icms_total_seguro

  # - Total do desconto (somente leitura)
  attr_reader :totais_icms_total_desconto

  # - Total do II (somente leitura)
  attr_reader :totais_icms_total_ii

  # - Total do IPI (somente leitura)
  attr_reader :totais_icms_total_ipi

  # - PIS (somente leitura)
  attr_reader :totais_icms_pis

  # - COFINS (somente leitura)
  attr_reader :totais_icms_cofins

  # - Outras despesas acessorias
  nfe_attr :totais_icms_outras_despesas_acessorias

  # - Total da nota
  nfe_attr :totais_icms_total_nota

  # - ISSQN
  # - Base de calculo do ISS
  nfe_attr :totais_issqn_base_calculo_iss

  # - Total do ISS
  nfe_attr :totais_issqn_total_iss

  # - PIS sobre servicos
  nfe_attr :totais_issqn_pis

  # - COFINS sobre servicos
  nfe_attr :totais_issqn_cofins

  # - Total dos servicos sob nao-incidencia ou nao tributados pelo ICMS
  nfe_attr :totais_issqn_total

  # - Retencao de Tributos
  # - Valor retido de PIS
  nfe_attr :totais_retencao_valor_retido_pis

  # - Valor retido de COFINS
  nfe_attr :totais_retencao_valor_retido_cofins

  # - Valor retido de CSLL
  nfe_attr :totais_retencao_valor_retido_csll

  # - Base de calculo do IRRF
  nfe_attr :totais_retencao_base_calculo_irrf

  # - Valor retido do IRRF
  nfe_attr :totais_retencao_valor_retido_irrf

  # - BC da ret. da Prev. Social
  nfe_attr :totais_retencao_bc_retencao_previdencia_social

  # - Retencao da Prev. Social
  nfe_attr :totais_retencao_retencao_previdencia_social

  # Transporte
  # - Modalidade do Frete (obrigatorio - seleciona de lista) - MODALIDADES_FRETE
  # - 0 - Por conta do emitente
  # - 1 - Por conta do destinatario
  nfe_attr :transporte_modalidade_frete

  # - Transportador (seleciona de Transportadoras)
  nfe_attr :transporte_transportadora

  # - Retencao do ICMS
  # - Base de calculo
  nfe_attr :transporte_retencao_icms_base_calculo

  # - Aliquota
  nfe_attr :transporte_retencao_icms_aliquota

  # - Valor do servico
  nfe_attr :transporte_retencao_icms_valor_servico

  # - UF
  nfe_attr :transporte_retencao_icms_uf

  # - Municipio
  nfe_attr :transporte_retencao_icms_municipio

  # - CFOP
  nfe_attr :transporte_retencao_icms_cfop

  # - ICMS retido
  nfe_attr :transporte_retencao_icms_retido

  # - Veiculo
  # - Placa
  nfe_attr :transporte_veiculo_placa

  # - RNTC
  nfe_attr :transporte_veiculo_rntc

  # - UF
  nfe_attr :transporte_veiculo_uf

  # - Reboque
  # - Placa
  nfe_attr :transporte_reboque_placa

  # - RNTC
  nfe_attr :transporte_reboque_rntc

  # - UF
  nfe_attr :transporte_reboque_uf

  # - Volumes (lista 1 para * / ManyToManyField)
  nfe_attr :transporte_volumes

  # Cobranca
  # - Fatura
  # - Numero
  nfe_attr :fatura_numero

  # - Valor original
  nfe_attr :fatura_valor_original

  # - Valor do desconto
  nfe_attr :fatura_valor_desconto

  # - Valor liquido
  nfe_attr :fatura_valor_liquido

  # - Duplicatas (lista 1 para * / ManyToManyField)
  nfe_attr :duplicatas

  # Informacoes Adicionais
  # - Informacoes Adicionais
  # - Informacoes adicionais de interesse do fisco
  nfe_attr :informacoes_adicionais_interesse_fisco

  # - Informacoes complementares de interesse do contribuinte
  nfe_attr :informacoes_complementares_interesse_contribuinte

  # - Observacoes do Contribuinte (lista 1 para * / ManyToManyField)
  nfe_attr :observacoes_contribuinte

  # - Processo Referenciado (lista 1 para * / ManyToManyField)
  nfe_attr :processos_referenciados


  STATUS                = {
      (EM_DIGITACAO = 1)     => 'Em Digitacao',
      (VALIDADA = 2)         => 'Validada',
      (ASSINADA = 3)         => 'Assinada',
      (EM_PROCESSAMENTO = 4) => 'Em processamento',
      (AUTORIZADA = 5)       => 'Autorizada',
      (REJEITADA = 6)        => 'Rejeitada',
      (CANCELADA = 7)        => 'Cancelada'
  }

  TIPOS_DOCUMENTO       = {
      (ENTRADA = 0) => 'Entrada',
      (SAIDA = 1)   => 'Saída'
  }

  PROCESSOS_EMISSAO     = [
      [0, 'Emissão de NF-e com aplicativo do contribuinte'],
      [1, 'Emissão de NF-e avulsa pelo Fisco'],
      [2, 'Emissão de NF-e avulsa, pelo contribuinte com seu certificado digital, através do site do Fisco'],
      [3, 'Emissão NF-e pelo contribuinte com aplicativo fornecido pelo Fisco']
  ]

  TIPOS_IMPRESSAO_DANFE = {
      (RETRATO = 1)  => 'Retrato',
      (PAISAGEM = 2) => 'Paisagem'
  }

  FORMAS_PAGAMENTO      = {
      (AVISTA = 1) => 'Pagamento a vista',
      (APRAZO = 2) => 'Pagamento a prazo',
      (OUTROS = 3) => 'Outros'
  }

  FORMAS_EMISSAO        = [
      [1, 'Normal'],
      [2, 'Contingencia'],
      [3, 'Contingencia com SCAN'],
      [4, 'Contingencia via DPEC'],
      [5, 'Contingencia FS-DA']
  ]

  FINALIDADES_EMISSAO   = {
      (NORMAL = 1)       => 'NF-e normal',
      (COMPLEMENTAR = 2) => 'NF-e complementar',
      (AJUSTE = 3)       => 'NF-e de ajuste'
  }

  REFERENCIADA_TIPOS    = {
      (NFE = 1) => 'Nota Fiscal Eletronica',
      (NF = 2)  =>'Nota Fiscal'
  }

  PRODUTOS_ESPECIFICOS  = [
      'Veiculo',
      'Medicamento',
      'Armamento',
      'Combustivel'
  ]

  AMBIENTES             = [
      [1, 'Producao'],
      [2, 'Homologacao'],
  ]

  def self.status_inicial
    NotaFiscal::STATUS[:em_digitacao]
  end

  def initialize
    @processo_emissao                         = 0
    @local_retirada_diferente_emitente        = false
    @localocal_entrega_diferente_destinatario = false
    @versao_processo_emissao                  = Parametros::VERSAO_PADRAO
    @status                                   = NotaFiscal::status_inicial
  end
end
