
# E provavel que esta entidade sera descartada, porque?
class Produto
  include EntidadeNFe

  # - Descricao (obrigatorio)
  nfe_attr :descricao

  # - Codigo (obrigatorio) - nao pode ser alterado quando em edicao
  nfe_attr :codigo

  # - EAN
  nfe_attr :ean

  # - EAN Unid. Tributavel
  nfe_attr :ean_unidade_tributavel

  # - EX TIPI
  nfe_attr :ex_tipi

  # - Genero
  nfe_attr :genero

  # - NCM
  nfe_attr :ncm

  # - Unid. Com.
  nfe_attr :unidade_comercial

  # - Valor Unitario Com.
  nfe_attr :valor_unitario_comercial

  # - Unid. Trib.
  nfe_attr :unidade_tributavel

  # - Qtd. Trib.
  nfe_attr :quantidade_tributavel

  # - Valor Unitario Trib.
  nfe_attr :valor_unitario_tributavel

  # Impostos
  # - ICMS (lista 1 para * / ManyToManyField)
  nfe_attr :icms

  # - IPI
  # - Classe de Enquadramento (cigarros e bebidas)
  nfe_attr :ipi_classe_enquadramento

  # - Codigo de Enquadramento Legal
  nfe_attr :ipi_codigo_enquadramento_legal

  # - CNPJ do Produtor
  nfe_attr :ipi_cnpj_produtor

  def initialize
    @icms = []
  end

end


