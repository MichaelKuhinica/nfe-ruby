require 'configuracao/parametros'
require 'entidades/endereco_emitente'

class Emitente
  # - Nome/Razao Social (obrigatório)
  attr_accessor :razao_social

  # - Nome Fantasia
  attr_accessor :nome_fantasia

  # - Nome
  attr_accessor :nome

  # - CNPJ (obrigatorio ou CPF)
  attr_accessor :cnpj

  # - CPF (obrigatorio ou CNPJ)
  attr_accessor :cpf

  # - Inscricao Estadual (obrigatorio)
  attr_accessor :inscricao_estadual

  # - CNAE Fiscal
  attr_accessor :cnae_fiscal

  # - Inscricao Municipal
  attr_accessor :inscricao_municipal

  # - Inscricao Estadual (Subst. Tributario)
  attr_accessor :inscricao_estadual_subst_tributaria

  # Logotipo
  attr_accessor :logotipo

  #Grupo de informações de interesse da Prefeitura
  attr_accessor :grupo_informacoes_interesse_prefeitura

  #CNAE fiscal
  attr_accessor :cnae

  #Código de Regime Tributário.(Obrigatorio)
  attr_accessor :crt

  attr_accessor :endereco_emitente

  def endereco_emitente=(tEnderEmi)
    @endereco_emitente = tEnderEmi if tEnderEmi.is_a? EnderecoEmitente
  end

  def crt=(valor)
    @crt = valor if REGIMES_TRIBUTARIOS.include? valor
  end

  def initialize
    @endereco_pais = Parametros::CODIGO_BRASIL
  end

  def to_s
    @cnpj
  end

  def attributes
    @attributes = {
        'emit' => {
            'CNPJ'      => cnpj,
            'CPF'       => cpf,
            'xNome'     => nome,
            'xFant'     => nome_fantasia,
            'enderEmit' => endereco_emitente.to_nfe_format,
            'ie'        => inscricao_estadual,
            'iest'      => inscricao_estadual,
            'IM'        => grupo_informacoes_interesse_prefeitura,
            'CNAE'      => cnae,
            'CRT'       => crt
        }
    }
  end

end