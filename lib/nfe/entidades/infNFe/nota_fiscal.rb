#coding: utf-8

require 'nfe/entidades/entidade_nfe'
require 'nfe/entidades/infNFe/ide/identificacao_nfe'
require 'nfe/entidades/infNFe/emit/emitente'
require 'nfe/entidades/infNFe/avulsa/avulsa'
require 'nfe/entidades/infNFe/dest/destinatario'
require 'nfe/entidades/infNFe/retirada/local_retirada'
require 'nfe/entidades/infNFe/entrega/local_entrega'
require 'nfe/entidades/infNFe/det/detalhes_nfe'
require 'nfe/entidades/infNFe/total/total'
require 'nfe/entidades/infNFe/transp/transporte'
require 'nfe/entidades/infNFe/cobr/cobranca'
require 'nfe/entidades/infNFe/infAdic/informacao_adicional_nfe'
require 'nfe/entidades/infNFe/exporta/exportacao'
require 'nfe/entidades/infNFe/compra/compra'
require 'nfe/entidades/infNFe/cana/cana'

module NFe

  class NotaFiscal < NFe::EntidadeNFe

    nfe_attr :ide #ok
    nfe_attr :emit #ok
    nfe_attr :avulsa #ok
    nfe_attr :dest #ok
    nfe_attr :retirada #ok
    nfe_attr :entrega #ok
    nfe_attr :det #TODO det
    nfe_attr :total #ok
    nfe_attr :transp #ok
    nfe_attr :cobr #ok
    nfe_attr :infAdic #ok
    nfe_attr :exporta #ok
    nfe_attr :compra #ok
    nfe_attr :cana #ok
    nfe_attr :versao
    nfe_attr :Id

    #ds:signature ???

    def attributes
      {:infNFe => super}
    end

    STATUS = {
        (EM_DIGITACAO = 1) => 'Em Digitacao',
        (VALIDADA = 2) => 'Validada',
        (ASSINADA = 3) => 'Assinada',
        (EM_PROCESSAMENTO = 4) => 'Em processamento',
        (AUTORIZADA = 5) => 'Autorizada',
        (REJEITADA = 6) => 'Rejeitada',
        (CANCELADA = 7) => 'Cancelada'
    }

    TIPOS_DOCUMENTO = {
        (ENTRADA = 0) => 'Entrada',
        (SAIDA = 1) => 'Saída'
    }

    PROCESSOS_EMISSAO = [
        [0, 'Emissão de NF-e com aplicativo do contribuinte'],
        [1, 'Emissão de NF-e avulsa pelo Fisco'],
        [2, 'Emissão de NF-e avulsa, pelo contribuinte com seu certificado digital, através do site do Fisco'],
        [3, 'Emissão NF-e pelo contribuinte com aplicativo fornecido pelo Fisco']
    ]

    TIPOS_IMPRESSAO_DANFE = {
        (RETRATO = 1) => 'Retrato',
        (PAISAGEM = 2) => 'Paisagem'
    }

    FORMAS_PAGAMENTO = {
        (AVISTA = 1) => 'Pagamento a vista',
        (APRAZO = 2) => 'Pagamento a prazo',
        (OUTROS = 3) => 'Outros'
    }

    FORMAS_EMISSAO = [
        [1, 'Normal'],
        [2, 'Contingencia'],
        [3, 'Contingencia com SCAN'],
        [4, 'Contingencia via DPEC'],
        [5, 'Contingencia FS-DA']
    ]

    FINALIDADES_EMISSAO = {
        (NORMAL = 1) => 'NF-e normal',
        (COMPLEMENTAR = 2) => 'NF-e complementar',
        (AJUSTE = 3) => 'NF-e de ajuste'
    }

    REFERENCIADA_TIPOS = {
        (NFE = 1) => 'Nota Fiscal Eletronica',
        (NF = 2) =>'Nota Fiscal'
    }

    PRODUTOS_ESPECIFICOS = [
        'Veiculo',
        'Medicamento',
        'Armamento',
        'Combustivel'
    ]

    AMBIENTES = [
        [1, 'Producao'],
        [2, 'Homologacao'],
    ]

    def self.status_inicial
      NotaFiscal::STATUS[:em_digitacao]
    end

    def initialize
      @versao_processo_emissao = NFe::VERSAO_PADRAO
      @ide = IdentificacaoNFe.new
      @emit = Emitente.new
      @avulsa = Avulsa.new
      @dest = Destinatario.new
      @retirada = LocalRetirada.new
      @entrega = LocalEntrega.new
      @det = DetalhesNFe.new
      @total = Total.new
      @transp = Transporte.new
      @cobr = Cobranca.new
      @infAdic = InformacaoAdicionalNFe.new
      @exporta = Exportacao.new
      @compra = Compra.new
      @cana = Cana.new
      @versao = '2.0'
      #TODO: Gerar id unico para nota
    end

  end
  
end